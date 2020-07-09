package com.wufuqiang.springmvc.crud.entries;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Department {
	private Integer id;
	private String departmentName;
}
