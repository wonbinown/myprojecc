package service;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import mapper.MemberMapper;
import model.Member;

@Service
public class RegisterService {

    @Autowired
    private MemberMapper memberMapper;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    

    public boolean register(String name, String username, String rawPassword, String email) {
        // 중복 체크
        if (memberMapper.findByUsername(username) != null) {
            return false;
        }
        // 비밀번호 암호화
        String encoded = passwordEncoder.encode(rawPassword);
        
        Pattern pattern = Pattern.compile("^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[\\W_]).{8,}$");
        if (!pattern.matcher(rawPassword).matches()) {
            throw new IllegalArgumentException("비밀번호 형식이 맞지 않습니다.");
        }

        // Member 객체 생성 (id는 null, 트리거가 채워 줌)
        Member m = new Member();
        m.setName(name);
        m.setUsername(username);
        m.setPassword(encoded);
        m.setEmail(email);

        memberMapper.insertMember(m);
        return true;
    }
}
