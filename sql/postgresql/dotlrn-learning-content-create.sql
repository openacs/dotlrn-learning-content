
-- create the implementation
select acs_sc_impl__new (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'dotlrn_learning_content'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'GetPrettyName',
           'learning_content::get_pretty_name',
           'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'AddApplet',
           'learning_content::add_applet',
           'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'RemoveApplet',
           'learning_content::remove_applet',
           'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'AddAppletToCommunity',
           'learning_content::add_applet_to_community',
           'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'RemoveAppletFromCommunity',
           'learning_content::remove_applet_from_community',
           'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'AddUser',
           'learning_content::add_user',
           'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'RemoveUser',
           'learning_content::remove_user',
           'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'AddUserToCommunity',
           'learning_content::add_user_to_community',
           'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'RemoveUserFromCommunity',
           'learning_content::remove_user_from_community',
           'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'AddPortlet',
        'learning_content::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'RemovePortlet',
        'learning_content::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'Clone',
        'learning_content::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'ChangeEventHandler',
        'learning_content::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
        'dotlrn_applet',
        'dotlrn_learning_content'
);
