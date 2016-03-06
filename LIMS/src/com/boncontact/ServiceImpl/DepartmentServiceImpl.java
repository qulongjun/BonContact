package com.boncontact.ServiceImpl;

import com.boncontact.Base.BaseServiceImpl;
import com.boncontact.Domain.Department;
import com.boncontact.Service.DepartmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DepartmentServiceImpl extends BaseServiceImpl<Department> implements DepartmentService {

}
