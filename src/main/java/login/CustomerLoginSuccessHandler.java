package login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import mapper.MemberMapper;
import model.Member;

public class CustomerLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Autowired
	private MemberMapper memberMapper; // 추가

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication auth)
	        throws IOException {
	    // username으로 회원정보 조회
	    Member member = memberMapper.findByUsername(auth.getName());
	    req.getSession().setAttribute("loginId", auth.getName());
	    req.getSession().setAttribute("loginName", member.getName()); // ★추가

	    res.sendRedirect(req.getContextPath() + "/main2");
	    System.out.println("로그인 성공! 사용자 ID: " + auth.getName());
	}
}
