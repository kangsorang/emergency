package com.sorang.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.sorang.domain.City;
import com.sorang.domain.Student;

@Mapper
public interface StudentMapper {
	@Select("select * from tb_students")
	List<Student> getAllStudents();
	
	@Insert(
			"insert into tb_students "
			+ "(birthday, name, mobile_number_student, "
			+ "mobile_number_mother, mobile_number_father, "
			+ "phone_number_home, address) " + 
			"values (#{s.birthday},#{s.name},#{s.mobile_number_student},"
			+ "#{s.mobile_number_mother},#{s.mobile_number_father},"
			+ "#{s.phone_number_home},#{s.address})")
	boolean insertCity(@Param("s") Student student);
}
