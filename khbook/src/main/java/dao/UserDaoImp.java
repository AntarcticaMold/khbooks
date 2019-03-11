package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.UserDTO;

public class UserDaoImp implements UserDAO{
	private SqlSessionTemplate sqlSession;
	
	public UserDaoImp() {
	
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void register(UserDTO udto) {
		sqlSession.insert("user.u_ins", udto);
		
	}
	
	
	
}//end class
