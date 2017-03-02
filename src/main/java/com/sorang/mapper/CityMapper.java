package com.sorang.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.sorang.domain.City;

@Mapper
public interface CityMapper {

	@Select("select * from tb_city where state = #{inputState}")
	City findByState(@Param("inputState") String state);
	
	@Insert(
			"insert into tb_city (id, name, state, country) " + 
			"values (#{inputCity.id},#{inputCity.name},#{inputCity.state},#{inputCity.country})")
	boolean insertCity(@Param("inputCity") City city);

}
