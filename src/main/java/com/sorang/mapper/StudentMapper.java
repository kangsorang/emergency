package com.sorang.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sorang.domain.Student;

@Mapper
public interface StudentMapper {
	@Select("select * from tb_students "
			+ "ORDER BY name")
	List<Student> getAllStudents();
	
	@Insert(
			"insert into tb_students "
			+ "(birthday, name, mobile_number_student, "
			+ "mobile_number_mother, mobile_number_father, "
			+ "phone_number_home, address) " + 
			"values (#{s.birthday},#{s.name},#{s.mobile_number_student},"
			+ "#{s.mobile_number_mother},#{s.mobile_number_father},"
			+ "#{s.phone_number_home},#{s.address})")
	boolean insertStudent(@Param("s") Student student);
	
	@Select("select * from tb_students ts "
			+ "where ts.name=#{s.name} "
			+ "and ts.birthday=#{s.birthday}")
	Student getStudent(@Param("s") Student student);
	
	@Update(
			"update tb_students "
			+ "set mobile_number_student=#{s.mobile_number_student} , "
			+ "	mobile_number_mother=#{s.mobile_number_mother} , "
			+ "	mobile_number_father=#{s.mobile_number_father} , "
			+ "	phone_number_home=#{s.phone_number_home} , "
			+ "	address=#{s.address} "
			+ "where name=#{s.name}")
	boolean updateStudent(@Param("s") Student student);
}
