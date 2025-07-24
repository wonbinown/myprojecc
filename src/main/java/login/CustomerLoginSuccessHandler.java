package login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomerLoginSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication auth)
            throws IOException {
        // 로그인 성공 시 사용자 이름을 세션에 저장
        req.getSession().setAttribute("loginId", auth.getName());

        // 메인페이지로 리다이렉트 (view=home 파라미터를 붙여 section 분기용)
        res.sendRedirect(req.getContextPath() + "/main?view=home");
        System.out.println("로그인 성공! 사용자 ID: " + auth.getName());
    }
}
