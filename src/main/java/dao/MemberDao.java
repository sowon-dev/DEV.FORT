package dao;

public interface MemberDao {
	
	//회원가입
	int insertMember(String email, String pw);
}
