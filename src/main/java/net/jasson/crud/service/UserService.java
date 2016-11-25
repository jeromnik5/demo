package net.jasson.crud.service;


import net.jasson.crud.model.User;

import java.util.List;

public interface UserService {

    public void addUser(User user);

    public void updateUser(User user);

    public void removeUser(int id);

    public User getUserById(int id);

    public List<User> getUsers(Integer page);

    public List<User> getUsers(String name);

}