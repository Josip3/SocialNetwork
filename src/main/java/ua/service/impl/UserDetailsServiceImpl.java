package ua.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ua.entity.User;
import ua.repository.UserRepository;
import ua.service.UserService;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {


    @Autowired
    private UserService userService;


    //26.11.2017 пізніше
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user =userService.findByEmail(s);
        if (user == null)
            System.out.println("vse bad");
        return user;
    }



}

