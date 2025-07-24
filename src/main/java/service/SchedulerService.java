package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import mapper.UserMapper;
import model.Users;

@Service
public class SchedulerService {
    @Autowired
    private UserMapper userMapper;
    @Scheduled(fixedDelay = 60000) // 1분마다 실행
    public void fetchAndSyncUsers() {
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Users[]> response = restTemplate.getForEntity(
            "https://jsonplaceholder.typicode.com/users", Users[].class
        );
        Users[] users = response.getBody();
        if(users != null) {
            for(Users u : users) {
                System.out.println("저장: " + u.getUsername());
                userMapper.upsertUser(u);
            }
        }
    }
}
