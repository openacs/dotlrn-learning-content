declare
	foo integer;
begin

	foo := acs_sc_impl.del (
	   impl_contract_name => 'dotlrn_applet',
           impl_name => 'dotlrn_learning_content'
	);

-- add all the hooks

-- GetPrettyName
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'GetPrettyName'
	);

-- AddApplet
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddApplet'
);

-- RemoveApplet
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveApplet'
);

-- AddAppletToCommunity
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddAppletToCommunity'
);

-- RemoveAppletFromCommunity
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveAppletFromCommunity'
);

-- AddUser
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddUser'
);

-- RemoveUser
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveUser'
);

-- AddUserToCommunity
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'AddUserToCommunity'
);

-- RemoveUserFromCommunity
	foo := acs_sc_impl.delete_alias (
	       'dotlrn_applet',
	       'dotlrn_learning_content',
	       'RemoveUserFromCommunity'
);

-- AddPortlet
	foo := acs_sc_impl.delete_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'AddPortlet'
    );

-- RemovePortlet
	foo := acs_sc_impl.delete_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'RemovePortlet'
);

-- Clone
	foo := acs_sc_impl.delete_alias (
        'dotlrn_applet',
        'dotlrn_learning_content',
        'Clone'
);


-- Add the binding
	foo := acs_sc_impl.del (
	    'dotlrn_applet',
	    'dotlrn_learning_content'
);
end;
/
show errors
