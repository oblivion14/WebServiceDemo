package com.spring.dao;

import com.spring.model.Team;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeamDAOImpl implements TeamDAO {

    /**
     *  SessionFactory - 하이버네이트와 데이터베이스 사이 상호작용을 위한 통로가 되는 세선 객체 생성
     *  session - 실제 DB 통신하는 작업 (DB CRUD 및 트랜잭션)
     */
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {

        return sessionFactory.getCurrentSession();
	}

	public void addTeam(Team team) {

        getCurrentSession().save(team);
	}

	public void updateTeam(Team team) {
		Team teamToUpdate = getTeam(team.getId());
		teamToUpdate.setId(team.getId());
        teamToUpdate.setUid(team.getUid());
		teamToUpdate.setPassword(team.getPassword());
        teamToUpdate.setSex(team.getSex());
        teamToUpdate.setName(team.getName());

        teamToUpdate.setEmail(team.getEmail());
		getCurrentSession().update(teamToUpdate);
		
	}

	public Team getTeam(String id) {
        Team team = (Team) getCurrentSession().get(Team.class, id);
		return team;
	}

	public void deleteTeam(String id) {
		Team team = getTeam(id);
		if (team != null)
			getCurrentSession().delete(team);
	}

    /**
     * @SuppressWarnings - 컴파일러의 경고를 보내지 말라는 내용 - "unchecked" - 검증되지 않은 연산자 경고
     * createQuery(String Query) - 작업을 진행할 쿼리 객체를 얻어냄
     * @return
     */
	@SuppressWarnings("unchecked")
	public List<Team> getTeams() {
		return getCurrentSession().createQuery("from Team").list();
	}

}
