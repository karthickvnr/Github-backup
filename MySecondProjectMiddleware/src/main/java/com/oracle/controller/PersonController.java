package com.oracle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.dao.PersonDao;
import com.oracle.model.Person;

@Controller

public class PersonController 
{
	@Autowired
	private PersonDao personDao;
	public PersonController()
	{
		System.out.println("Creating Instance for Person Controller");
	}
	@RequestMapping(value = "/getallpersons",method=RequestMethod.GET)
	//@ResponseBody - Data Conversion
	//@ResponseBody - Convert list of java objects to array of JSON
	public @ResponseBody List<Person> getAllPersons()
	{
		List<Person> persons = personDao.getAllPersons();
		return persons;
	}
	
	@RequestMapping(value="/saveperson",method=RequestMethod.POST)
	public @ResponseBody Person savePerson(@RequestBody Person person)
	{
		personDao.savePerson(person);
		return person;
	}

}

