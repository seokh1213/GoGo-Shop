package com.gogo.gogoshop.service;

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

    public User syncUser(String uid, String email) {
        User user = userRepository.findByUid(uid)
                .orElseGet(() -> new User(uid, email, null, UserType.USER));

        userRepository.save(user);

        return user;
    }
}
