package com.dx.core.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.dx.zscq.entity.TeamMember;

public class RunnawayJDBCTest {

	private static final String SQL_INSERT_TEAM_MEMBER = 
			"insert into team_member (id, name, resume, rank) values (?,?,?,?)";
	private static final String SQL_UPDATE_TEAM_MEMBER =
			"update team_member set name=?,resume=?,rank=? where id=?";
	private static final String SQL_SELECT_TEAM_MEMBER =
			"select id,name,resume,rank from team_member where id=?";
	
	private DataSource dataSource;
	
	public void addTm(TeamMember tm) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = dataSource.getConnection();
			stmt = conn.prepareStatement(SQL_INSERT_TEAM_MEMBER);
			
			stmt.setLong(1, tm.getId());
			stmt.setString(2, tm.getName());
			stmt.setString(3, tm.getResume());
			stmt.setInt(3, tm.getRank());
			stmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if(stmt !=null)
						stmt.close();
					if(conn !=null)
						conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}
}
