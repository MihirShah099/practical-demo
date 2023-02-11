package com.practical.demo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.practical.demo.dto.ChartsDto;
import com.practical.demo.dto.IncidentDto;

public interface IIncidentService {

	IncidentDto saveIncident(HttpServletRequest request, IncidentDto incidentDto);

	List<IncidentDto> findAll();

	List<ChartsDto> findByDepartmentAndCount();

}