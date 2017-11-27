package com.oracle.dao;

import java.util.List;

import com.oracle.model.Person;

public interface PersonDao
{
	List<Person> getAllPersons();
	void savePerson(Person person);

}
