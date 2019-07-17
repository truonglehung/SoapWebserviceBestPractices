package com.vsolu.soapsimple.service;

import com.vsolu.soapsimple.beans.Person;

public interface PersonService {

	public boolean addPerson(Person p);
	
	public boolean deletePerson(int id);
	
	public Person getPerson(int id);
	
	public Person[] getAllPersons();
	
	public boolean deletePerson2(int id) ;
}