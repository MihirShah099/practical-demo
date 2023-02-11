package com.practical.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.practical.demo.dto.ChartsDto;
import com.practical.demo.model.Incident;

@Repository
public interface IncidentRepository extends JpaRepository<Incident, Long> {

	@Query("select new com.practical.demo.dto.ChartsDto(i.departmentId.name, count(i.departmentId)) from Incident i group by i.departmentId.name")
	List<ChartsDto> findByDepartmentAndCount();

}