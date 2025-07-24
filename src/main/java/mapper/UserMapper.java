package mapper;

import java.util.List;
import model.Users;

public interface UserMapper {
    List<Users> findAll();
    void upsertUser(Users user); // MERGE 또는 INSERT/UPDATE
}
