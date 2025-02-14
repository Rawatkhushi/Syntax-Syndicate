package com.dao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

import com.model.Event;

public class EventDao {
	private Connection con;
	private String query;
	private String secQuery;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public EventDao(Connection con) {
		this.con = con;
	}
	
	
	public List<Event> getAllEvents(){
		List<Event> events = new ArrayList<Event>();
		try {
			query = "select * from events;";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while(rs.next()) {
				Event row = new Event();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setLocation(rs.getString("location"));
				row.setDate(rs.getDate("date"));
				row.setDescription(rs.getString("description"));
				row.setCreatedBy(rs.getInt("createdBy"));
				
				events.add(row);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return events;
	}
	
	
	
	public int createEvent(Event event) throws SQLException{
		int result=0;
		   java.util.Date utilDate = event.getDate();
		    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		query = "INSERT INTO events" + "(name, location, date, description, createdBy) VALUES" + 
		"(?, ?, ?, ?, ?);";
		try {
			pst = this.con.prepareStatement(query);
			pst.setString(1, event.getName());
			pst.setString(2, event.getLocation());
			pst.setDate(3, sqlDate);
			pst.setString(4, event.getDescription());
			pst.setInt(5, event.getCreatedBy());
			
			result = pst.executeUpdate();
			
			secQuery = "ALTER TABLE attendees" + " ADD " + event.getName().replaceAll("\\s", "")+"createdBy"+event.getCreatedBy() + " INT ;";
			Statement pst2 = this.con.createStatement();
			pst2.executeUpdate(secQuery);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public boolean updateEvent(Event event) throws SQLException{
		   java.util.Date utilDate = event.getDate();
		    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		boolean rowUpdated = false;
		try {
			query = "update events set name=?, date=?, location=?, description=? attending=? notattending=? where id=?;";
			pst = this.con.prepareStatement(query);
			pst.setString(1, event.getName());
			pst.setString(2, event.getLocation());
			pst.setString(3, event.getDescription());
			pst.setDate(4,  sqlDate);
			pst.setInt(5,  event.getCreatedBy());
			
			rowUpdated = pst.executeUpdate() > 0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rowUpdated;
	}
	

	
	
}