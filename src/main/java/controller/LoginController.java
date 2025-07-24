package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    // /main?view=login 으로 넘어온 건 security가 아니라 이걸로 뿌려줄 수도 있고,
    // 사실 security-context.xml 에 login-page="/main?view=login" 만 설정했으면
    // 이 컨트롤러는 없어도 JSP 분기에서 그냥 렌더링됨.
    @GetMapping("/login")
    public String login() {
        return "redirect:/main?view=login";
    }
    @Controller
    public class AccessErrorController {
      @GetMapping("/accessDenied")
      public String accessDenied() {
        return "login/accessError";  // /WEB-INF/views/login/accessError.jsp
      }
    }
}