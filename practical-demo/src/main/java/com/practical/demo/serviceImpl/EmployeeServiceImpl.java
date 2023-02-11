package com.practical.demo.serviceImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practical.demo.dto.EmployeeDto;
import com.practical.demo.model.Employee;
import com.practical.demo.repository.EmployeeRepository;
import com.practical.demo.service.IEmployeeService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class EmployeeServiceImpl implements IEmployeeService {

	private Logger LOGGER = LoggerFactory.getLogger(getClass());
	private final EmployeeRepository employeeRepository;

	@Override
	public List<EmployeeDto> getEmployeeByDepartment(Long departmentId) {
		LOGGER.info("getEmployeeByDepartment called for {}", departmentId.longValue());
		List<Employee> employees = employeeRepository.findByDepartmentId(departmentId);
		return employees.stream().map(this::convertToDto).collect(Collectors.toList());
	}

	private EmployeeDto convertToDto(Employee employee) {
		EmployeeDto employeeDto = new EmployeeDto();
		BeanUtils.copyProperties(employee, employeeDto);
		return employeeDto;
	}
}