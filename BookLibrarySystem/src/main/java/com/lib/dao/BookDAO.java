package com.lib.dao;

import java.sql.ResultSet;

import com.lib.dto.Books;

public interface BookDAO {

	String save(Books book);
    Books findById(int bid);
    ResultSet findAll();

}
