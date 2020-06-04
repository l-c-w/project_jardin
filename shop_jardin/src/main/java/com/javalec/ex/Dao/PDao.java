package com.javalec.ex.Dao;

import java.sql.Timestamp;
import java.util.ArrayList;

import com.javalec.ex.Dto.PDto.ProductDto;

public interface PDao {

	public ArrayList<ProductDto> list ();
}
