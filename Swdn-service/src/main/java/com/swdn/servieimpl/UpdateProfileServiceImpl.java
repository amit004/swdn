package com.swdn.servieimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.UpdateProfileRequest;
import com.swdn.responsemodels.UpdateProfileResponse;
import com.swdn.service.UpdateProfileService;

public class UpdateProfileServiceImpl implements UpdateProfileService {
	
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public UpdateProfileResponse doUpdateProfile(UpdateProfileRequest updateProfileRequest) throws SwdnException {
		String sql = "INSERT INTO CUSTOMER " + "(First_name, middle_name, Last_name) VALUES (?, ?, ?)"; // need to add fields according to database
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, updateProfileRequest.getFirstName());
			ps.setString(2, updateProfileRequest.getMiddleName());
			ps.setString(3, updateProfileRequest.getLastName());
			// Keep adding more data
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return null;
	}

}
