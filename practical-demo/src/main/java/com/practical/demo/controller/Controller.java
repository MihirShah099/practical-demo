package com.practical.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.practical.demo.dto.ChartsDto;
import com.practical.demo.dto.DepartmentDto;
import com.practical.demo.dto.EmployeeDto;
import com.practical.demo.dto.IncidentDto;
import com.practical.demo.service.IDepartmentService;
import com.practical.demo.service.IEmployeeService;
import com.practical.demo.service.IIncidentService;

import lombok.RequiredArgsConstructor;

@org.springframework.stereotype.Controller
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class Controller {

	private Logger LOGGER = LoggerFactory.getLogger(getClass());
	private final IDepartmentService departmentService;
	private final IEmployeeService employeeService;
	private final IIncidentService incidentService;

	@GetMapping("/")
	public String viewJspPage(Model model) {
		List<IncidentDto> incidentDtos = incidentService.findAll();
		model.addAttribute("incidents", incidentDtos);
		return "index";
	}
	
	@GetMapping("/charts")
	public String viewChartsJspPage(Model model) {
		List<ChartsDto> chartsDtos = incidentService.findByDepartmentAndCount();
		model.addAttribute("chartData", chartsDtos);
		return "charts";
	}

	@ResponseBody
	@GetMapping("/getDepartments")
	public ResponseEntity<?> getAllDepartments() {
		LOGGER.info("getAllDepartments called");
		List<DepartmentDto> departmentDtos = departmentService.getAllDepartments();
		return ResponseEntity.ok(departmentDtos);
	}

	@ResponseBody
	@GetMapping("/getEmployeeByDepartment")
	public ResponseEntity<?> getEmployeeByDepartment(HttpServletRequest request,
			@RequestParam(value = "departmentId") Long departmentId) {
		LOGGER.info("getEmployeeByDepartment called");
		List<EmployeeDto> employeeDtos = employeeService.getEmployeeByDepartment(departmentId);
		if (employeeDtos != null && employeeDtos.size() > 0) {
			return ResponseEntity.ok(employeeDtos);
		}
		return ResponseEntity.notFound().build();
	}
}