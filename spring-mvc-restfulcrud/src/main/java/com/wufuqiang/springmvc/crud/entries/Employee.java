package com.wufuqiang.springmvc.crud.entries;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Past;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Employee {
	private Integer id;

	@NotEmpty
	private String lastName;
	@Email
	private String email;

	private Integer gender;
	private Department department;

	@Past
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;

	@NumberFormat(pattern = "#,###,###.#")
	private Float salary;

	public Employee(Integer id, @NotEmpty String lastName, @Email String email, Integer gender, Department department) {
		this.id = id;
		this.lastName = lastName;
		this.email = email;
		this.gender = gender;
		this.department = department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Department getDepartment() {
		return department;
	}
}
