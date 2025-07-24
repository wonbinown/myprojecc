package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import mapper.UserMapper;
import model.Users;

@RestController
@RequestMapping("/api/users")
public class WorkController {
    @Autowired
    private UserMapper userMapper;

    @GetMapping(produces = "application/json; charset=UTF-8")
    public List<Users> getAllUsers() {
        return userMapper.findAll();
    }
}
