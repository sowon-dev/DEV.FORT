package dao;

public class MemberDaoImpl implements MemberDao {

	@Override
	public int insertMember(String email, String pw) {
		// TODO Auto-generated method stub
		System.out.println("회원가입완료");
		return 1; //0=fail 1=succed
	}

}
