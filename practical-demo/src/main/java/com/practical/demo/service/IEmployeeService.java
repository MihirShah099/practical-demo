package com.practical.demo.service;

import java.util.List;

import com.practical.demo.dto.EmployeeDto;

public interface IEmployeeService {

	List<EmployeeDto> getEmployeeByDepartment(Long departmentId);

}