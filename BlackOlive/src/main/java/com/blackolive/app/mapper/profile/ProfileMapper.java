package com.blackolive.app.mapper.profile;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.profile.InterestCategoryVO;
import com.blackolive.app.domain.profile.ProfileVO;
import com.blackolive.app.domain.profile.SkinTroubleVO;

public interface ProfileMapper {
	
	public ProfileVO getprofile(String userid) throws ClassNotFoundException, SQLException;
	
	public InterestCategoryVO getinterestcategory(String userid) throws ClassNotFoundException, SQLException;
	
	public SkinTroubleVO getskintrouble(String userid) throws ClassNotFoundException, SQLException;
	
	public int updateprofile(String userid,
				String nickname,
				String profileContent,
				String skintoneId, 
				String skintypeId,
				String profileImg ) throws ClassNotFoundException, SQLException;
	
	public int updateinterestcategory(String userid, List<String> userprofileInterestId ) throws ClassNotFoundException, SQLException;
	
	public int updateskintrouble(String userid, List<String> userprofileSkintroubleId ) throws ClassNotFoundException, SQLException;
		
	public int deleteinterestcategory(String userid) throws ClassNotFoundException, SQLException;
	
	public int deleteskintrouble(String userid) throws ClassNotFoundException, SQLException;
	
	public int insertprofile(String userid,
			String nickname,
			String profileContent,
			String skintoneId, 
			String skintypeId,
			String profileImg ) throws ClassNotFoundException, SQLException;
	
	public int insertinterestcategory(String userid, List<String> userprofileInterestId ) throws ClassNotFoundException, SQLException;
	
	public int insertskintrouble(String userid, List<String> userprofileSkintroubleId ) throws ClassNotFoundException, SQLException;

	

}
