package com.practical.demo.serviceImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practical.demo.dto.DepartmentDto;
import com.practical.demo.model.Department;
import com.practical.demo.repository.DepartmentRepository;
import com.practical.demo.service.IDepartmentService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class DepartmentServiceImpl implements IDepartmentService {

	private Logger LOGGER = LoggerFactory.getLogger(getClass());
	private final DepartmentRepository departmentRepository;

	@Override
	public List<DepartmentDto> getAllDepartments() {
		LOGGER.info("getAllDepartments called");
		return departmentRepository.findAll().stream().map(this::convertToDto).collect(Collectors.toList());
	}

	private DepartmentDto convertToDto(Department department) {
		DepartmentDto departmentDto = new DepartmentDto();
		BeanUtils.copyProperties(department, departmentDto);
		return departmentDto;
	}
}