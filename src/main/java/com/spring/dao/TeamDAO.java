package com.spring.dao;

import com.spring.model.Team;

import java.util.List;

public interface TeamDAO {
	
	public void addTeam(Team team);
	public void updateTeam(Team team);
	public Team getTeam(String id);
	public void deleteTeam(String id);
	public List<Team> getTeams();

}
