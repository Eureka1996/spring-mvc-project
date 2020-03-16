package com.wufuqiang.springmvc.entries;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class User {
	private String username;
	private String password;
	private String email;
	private int age;
	private Address address;
}
