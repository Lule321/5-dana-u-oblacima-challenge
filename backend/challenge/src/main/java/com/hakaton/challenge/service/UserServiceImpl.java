package com.hakaton.challenge.service;
import com.hakaton.challenge.api.User;
import com.hakaton.challenge.domain.UserEntity;
import com.hakaton.challenge.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

@Service
@AllArgsConstructor
public class UserServiceImpl implements  UserService{

    private final UserRepository userRepository;
    private final ModelMapper modelMapper;
    public User saveUser(User u)
    {
          UserEntity userEntity = new UserEntity();
          userEntity = modelMapper.map(u, UserEntity.class);
          userEntity  = userRepository.save(userEntity);
          return u;
    }

}
