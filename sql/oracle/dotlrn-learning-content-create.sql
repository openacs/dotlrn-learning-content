declare
	foo integer;
begin

-- create the implementation
	foo := acs_sc_impl.new (
		impl_contract_name => 'dotlrn_applet',
		impl_name => 'dotlrn_learning_content',
		impl_pretty_name => 'dotlrn_learning_content',
		impl_owner_name => 'dotlrn_learning_content'
	);

-- add all the hooks

-- GetPrettyName
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'GetPrettyName',
	       'learning_content::get_pretty_name',
	       'TCL'
	);

-- AddApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddApplet',
	       'learning_content::add_applet',
	       'TCL'
	);

-- RemoveApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveApplet',
	       'learning_content::remove_applet',
	       'TCL'
	);

-- AddAppletToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddAppletToCommunity',
	       'learning_content::add_applet_to_community',
	       'TCL'
	);

-- RemoveAppletFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveAppletFromCommunity',
	       'learning_content::remove_applet_from_community',
	       'TCL'
	);

-- AddUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddUser',
	       'learning_content::add_user',
	       'TCL'
	);

-- RemoveUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveUser',
	       'learning_content::remove_user',
	       'TCL'
	);

-- AddUserToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddUserToCommunity',
	       'learning_content::add_user_to_community',
	       'TCL'
	);

-- RemoveUserFromCommunity
	foo := acs_sc_impl.new_alias (
           'dotlrn_applet',
           'dotlrn_learning_content',
           'RemoveUserFromCommunity',
           'learning_content::remove_user_from_community',
           'TCL'
	);

-- AddPortlet
	foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'AddPortlet',
        'learning_content::add_portlet',
        'TCL'
    );

-- RemovePortlet
	foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'RemovePortlet',
        'learning_content::remove_portlet',
        'TCL'
);

-- Clone
	foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'Clone',
        'learning_content::clone',
        'TCL'
);

	foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'ChangeEventHandler',
        'learning_content::change_event_handler',
        'TCL'
);

-- Add the binding
acs_sc_binding.new ( 
	    contract_name => 'dotlrn_applet',
	    impl_name => 'dotlrn_learning_content'
);

end;
/
show errors
