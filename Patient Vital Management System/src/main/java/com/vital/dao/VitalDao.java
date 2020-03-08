package com.vital.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.vital.beans.VitalsPOJO;

public class VitalDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(VitalsPOJO p) {
		String sql = "insert into vitals(name,sex,age,weight,height,temperature,bloodPressure,pulseRate,respirationRate) values('"
				+ p.getName() + "','" + p.getSex() + "'," + p.getAge() + "," + p.getWeight() + "," + p.getHeight() + ","
				+ p.getTemperature() + "," + p.getBloodPressure() + "," + p.getPulseRate() + ","
				+ p.getRespirationRate() + ")";
		return template.update(sql);
	}

	public int update(VitalsPOJO p) {
		String sql = "update vitals set name='" + p.getName() + "',sex='" + p.getSex() + "',age=" + p.getAge()
				+ ",weight=" + p.getWeight() + ",height=" + p.getHeight() + ",temperature=" + p.getTemperature()
				+ ",bloodPressure=" + p.getBloodPressure() + ",pulseRate=" + p.getPulseRate() + ",respirationRate="
				+ p.getRespirationRate() + " where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from vitals where id=" + id + "";
		return template.update(sql);
	}

	public VitalsPOJO getEmpById(int id) {
		String sql = "select * from vitals where id=?";
		return template.queryForObject(sql, new Object[] { id },
				new BeanPropertyRowMapper<VitalsPOJO>(VitalsPOJO.class));
	}

	public List<VitalsPOJO> getEmployees() {
		return template.query("select * from vitals", new RowMapper<VitalsPOJO>() {
			public VitalsPOJO mapRow(ResultSet rs, int row) throws SQLException {
				VitalsPOJO e = new VitalsPOJO();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setSex((rs.getString(3)));
				e.setAge(rs.getFloat(4));
				e.setWeight(rs.getFloat(5));
				e.setHeight(rs.getFloat(6));
				e.setTemperature(rs.getFloat(7));
				e.setBloodPressure(rs.getFloat(8));
				e.setPulseRate(rs.getFloat(9));
				e.setRespirationRate(rs.getFloat(10));
				return e;
			}
		});
	}
}