package com.gogo.gogoshop.service;

import com.gogo.gogoshop.dto.UserDTO;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.enums.UserType;
import com.gogo.gogoshop.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public Optional<User> getUserByUid(String uid) {
        return userRepository.findByUid(uid);
    }

    public User syncUser(String uid, String email, String nickname) {
        User user = userRepository.findByUid(uid)
                .orElseGet(() -> new User(uid, email, nickname, UserType.USER));

        userRepository.save(user);

        return user;
    }

    public UserDTO convertUser(User user) {
        return UserDTO.builder()
                .id(user.getId())
                .email(user.getEmail())
                .nickname(user.getNickname())
                .build();
    }
}
