package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
public class Member {
    private Integer id;
    private String name;
    private String username;
    private String password;
    private String email;
}
