package mapper;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public interface MemberMapper {
	Member findByUsername(@Param("username") String username);

	int insertMember(Member m);

}
