package com.lib.dao;

import com.lib.dto.Validate_LibrarianLogin;

public interface LibrarianDAO {
	int LibrarianValidate(Validate_LibrarianLogin validateLibrarianLogin);
	String findById(int aid);

}
