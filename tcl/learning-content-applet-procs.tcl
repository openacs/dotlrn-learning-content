ad_library {
    Procs to set up the content applet
}

namespace eval learning_content {

    ad_proc -public applet_key {
    } {
        What's my applet key?
    } {
        return "dotlrn_learning_content"
    }

    ad_proc -public my_package_key {
    } {
        What package do I deal with?
    } {
        return "dotlrn-learning-content"
    }

    ad_proc -public package_key {
    } {
        What package do I deal with?
    } {
        return "learning-content"
    }

    ad_proc -public get_pretty_name {
    } {
        returns the pretty name
    } {
        return "#learning-content-portlet.content#"
    }

    ad_proc -public add_applet {
    } {
        One time init - must be repeatable!
    } {
        dotlrn_applet::add_applet_to_dotlrn -applet_key [applet_key] -package_key [my_package_key]
    }

    ad_proc -public remove_applet {
    } {
        One time destroy
    } {
        ad_return_complaint 1 "[applet_key] remove_applet not implimented!"
    }

    ad_proc -public add_applet_to_community {
        community_id
    } {
        Add the learn content applet to a specifc dotlrn community
    } {
        # get the community portal id
        set portal_id [dotlrn_community::get_portal_id -community_id $community_id]

        #create the content package instance
        set package_id [dotlrn::instantiate_and_mount $community_id [package_key]]

        # set up the admin portlet
        set admin_portal_id [dotlrn_community::get_admin_portal_id -community_id $community_id]

    learning_content_admin_portlet::add_self_to_page \
        -portal_id $admin_portal_id \
        -package_id $package_id

    # set up the content portlet for this community
    set portal_id [dotlrn_community::get_portal_id -community_id $community_id]

    #add portlet to community portal
    set args [ns_set create]
    ns_set put $args package_id $package_id
    ns_set put $args param_action "overwrite"
    add_portlet_helper $portal_id $args

        return $package_id
    }

    ad_proc -public remove_applet_from_community {
        community_id
    } {
        remove the applet from the community
    } {
        ad_return_complaint 1 "[applet_key] remove_applet_from_community not implimented!"
    }

    ad_proc -public add_user {
        user_id
    } {
        one time user-specifuc init
    } {
        # noop
    }

    ad_proc -public remove_user {
        user_id
    } {
    } {
        ad_return_complaint 1 "[applet_key] remove_user not implimented!"
    }

    ad_proc -public add_user_to_community {
        community_id
        user_id
    } {
        Add a user to a specifc dotlrn community
    } {
#     set portal_id [dotlrn::get_portal_id -user_id $user_id]
#         set package_id [dotlrn_community::get_applet_package_id -community_id $community_id -applet_key [applet_key]]

#         # use "append" here since we want to aggregate
#         set args [ns_set create]
#         ns_set put $args package_id $package_id
#         ns_set put $args param_action append
#         add_portlet_helper $portal_id $args
#         # flush cache for this portal
#         ::tlf_global flush_portal $portal_id
    }

    ad_proc -public remove_user_from_community {
        community_id
        user_id
    } {
        Remove a user from a community
    } {
#         set package_id [dotlrn_community::get_applet_package_id -community_id $community_id -applet_key [applet_key]]
#         set portal_id [dotlrn::get_portal_id -user_id $user_id]

#         set args [ns_set create]
#         ns_set put $args package_id $package_id

#         remove_portlet $portal_id $args
#         # flush cache for this portal
#         ::tlf_global flush_portal $portal_id
    }

    ad_proc -public add_portlet {
        portal_id
    } {
        A helper proc to add the underlying portlet to the given portal

        @param portal_id
    } {
        # simple, no type specific stuff, just set some dummy values
        set args [ns_set create]
        ns_set put $args package_id 0
        add_portlet_helper $portal_id $args
    }

    ad_proc -public add_portlet_helper {
        portal_id
        args
    } {
        A helper proc to add the underlying portlet to the given portal.
        @param portal_id
    } {
        learning_content_portlet::add_self_to_page \
            -portal_id $portal_id \
            -package_id [ns_set get $args "package_id"] \
            -force_region [ns_set get $args "force_region"] \
            -page_name [get_pretty_name] \
            -param_action [ns_set get $args "param_action"]
    }

    ad_proc -public remove_portlet {
        portal_id
        args
    } {
        A helper proc to remove the underlying portlet from the given portal. 

        @param portal_id
        @param args A list of key-value pairs (possibly user_id, community_id, and more)
    } { 
        learning_content_portlet::remove_self_from_page \
            -portal_id $portal_id \
            -package_id [ns_set get $args "package_id"] 
    }

    ad_proc -public clone {
        old_community_id
        new_community_id
    } {
        Clone this applet's content from the old community to the new one
    } {
        set new_package_id [add_applet_to_community $new_community_id]
        set old_package_id [dotlrn_community::get_applet_package_id \
            -community_id $old_community_id \
            -applet_key [applet_key]
        ]

        db_exec_plsql clone_data {}
        return $new_package_id
    }

    ad_proc -public change_event_handler {
        community_id:required
        event:required
        old_value:required
        new_value:required
    } {
        listens for the following events: 
    } {
    }
}