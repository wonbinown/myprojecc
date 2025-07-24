package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import mapper.MemberMapper;
import model.Member;

@Service("loginService")
public class LoginService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Member m = memberMapper.findByUsername(username);
		if (m == null) {
			throw new UsernameNotFoundException("사용자 없음: " + username);
		}
		return User.builder()
				.username(m.getUsername())
				.password(m.getPassword())
				.roles("USER")  // DB에 role 칼럼 없으니 모두 USER
				.build();
	}
}