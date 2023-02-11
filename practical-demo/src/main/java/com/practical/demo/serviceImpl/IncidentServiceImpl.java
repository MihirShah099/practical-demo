package com.practical.demo.serviceImpl;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practical.demo.dto.ChartsDto;
import com.practical.demo.dto.IncidentDto;
import com.practical.demo.model.Incident;
import com.practical.demo.repository.IncidentRepository;
import com.practical.demo.service.IIncidentService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class IncidentServiceImpl implements IIncidentService {

	private Logger LOGGER = LoggerFactory.getLogger(getClass());
	private final IncidentRepository incidentRepository;

	@Override
	public IncidentDto saveIncident(HttpServletRequest request, IncidentDto incidentDto) {
		LOGGER.info("saveIncident called");
		Incident incident = new Incident();
		BeanUtils.copyProperties(incidentDto, incident);
		incident.setCreatedDate(new Date());
		incident = incidentRepository.save(incident);
		BeanUtils.copyProperties(incident, incidentDto);
		return incidentDto;
	}

	@Override
	public List<IncidentDto> findAll() {
		LOGGER.info("findAll called");
		List<Incident> incidents = incidentRepository.findAll();
		return incidents.stream().map(this::convertToDto).collect(Collectors.toList());
	}

	private IncidentDto convertToDto(Incident incident) {
		IncidentDto incidentDto = new IncidentDto();
		BeanUtils.copyProperties(incident, incidentDto);
		return incidentDto;
	}

	@Override
	public List<ChartsDto> findByDepartmentAndCount() {
		LOGGER.info("findByDepartmentAndCount called");
		List<ChartsDto> chartsDtos = incidentRepository.findByDepartmentAndCount();
		return chartsDtos;
	}
}