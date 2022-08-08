package teamproject;

import java.sql.*;
import java.util.*;
import teamproject.RecipesDto;

public class RecipesDao {
	Connection con=null;
	
	public RecipesDao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println("응");
	}
	
	public List<RecipesDto> selectAll(){
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "C##WEB02", "hoseo1234");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		Statement stmt=null;
		ResultSet rs= null;
		List<RecipesDto> res=new ArrayList<RecipesDto>();
		
		String sql="SELECT * FROM RECIPES";
		try {
			stmt=con.createStatement();

			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				System.out.println(1);
				RecipesDto dto= new RecipesDto(
						rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getDate(4),
						rs.getString(5), rs.getString(6),
						rs.getString(7), rs.getInt(8));
				res.add(dto);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return res;
	}
	
	public RecipesDto selectOne(int bd_no) {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "C##WEB02", "hoseo1234");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		PreparedStatement pstm=null;
		ResultSet rs=null;
		RecipesDto res=null;
		
		String sql="SELECT * FROM RECIPES WHERE BD_NO=?";
		
		try {
			pstm=con.prepareStatement(sql);
			pstm.setInt(1, bd_no);
			
			rs=pstm.executeQuery();
			
			while(rs.next()) {
				res=new RecipesDto();
				
				res.setBd_no(bd_no);
				res.setBd_title(rs.getString(2));
				res.setBd_content(rs.getString(3));
				res.setBd_date(rs.getDate(4));
				res.setBd_id(rs.getString(5));
				res.setBd_pw(rs.getString(6));
				res.setBd_imge(rs.getString(7));
				res.setBd_views(rs.getInt(8));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstm.close();
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return res;
	}
	
	public int insert(RecipesDto dto) {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "C##WEB02", "hoseo1234");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		PreparedStatement pstm=null;
		int res=0;
		String sql="INSERT INTO BOARD VALUES(BD_SEQ.NEXTVAL, ?, ?, ?, SYSDATE)";
		
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1, dto.getBd_name());
			pstm.setString(2, dto.getBd_title());
			pstm.setString(3, dto.getBd_content());
			
			res=pstm.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				pstm.close();
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return res;
	}
	
	public int update(RecipesDto dto) {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "C##WEB02", "hoseo1234");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		PreparedStatement pstm=null;
		int res=0;
		String sql="UPDATE BOARD SET BD_TITLE=?, BD_CONTENT=? WHERE BD_NO=?";
		
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1, dto.getBd_title());
			pstm.setString(2, dto.getBd_content());
			pstm.setInt(3, dto.getBd_no());
			
			res=pstm.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				pstm.close();
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return res;
	}
	
	public int delete(int bd_no) {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "C##WEB02", "hoseo1234");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		PreparedStatement pstm=null;
		int res=0;
		String sql="DELETE FROM BOARD WHERE BD_NO=?";
		
		try {
			pstm=con.prepareStatement(sql);
			pstm.setInt(1, bd_no);
			
			res=pstm.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				pstm.close();
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return res;
	}
}
