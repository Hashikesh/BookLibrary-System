package com.lib.dao;

import com.lib.dto.Student;
import com.lib.dto.ValidateStudent;

public interface StudentDAO {
	String save(Student student);
	String save_login(ValidateStudent vStudent);
	int StudentValidate(ValidateStudent validateLib);
	String deleteById(int lid);
	String findById(int lid);
	String updatePassword(String username, String newPassword);

}
