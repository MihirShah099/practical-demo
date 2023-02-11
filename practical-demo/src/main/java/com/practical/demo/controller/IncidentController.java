package com.practical.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.practical.demo.dto.IncidentDto;
import com.practical.demo.service.IIncidentService;

import lombok.RequiredArgsConstructor;

@org.springframework.stereotype.Controller
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class IncidentController {

	private Logger LOGGER = LoggerFactory.getLogger(getClass());
	private final IIncidentService incidentService;

	@PostMapping("/saveIncident")
	public String saveIncident(HttpServletRequest request, @ModelAttribute IncidentDto incidentDto) {
		LOGGER.info(incidentDto.toString());
		incidentDto = incidentService.saveIncident(request, incidentDto);
		return "redirect:/";
	}
}