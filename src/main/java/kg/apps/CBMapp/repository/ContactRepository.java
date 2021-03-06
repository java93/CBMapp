package kg.apps.CBMapp.repository;

import kg.apps.CBMapp.model.Contact;
import kg.apps.CBMapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;


public interface ContactRepository extends JpaRepository<Contact,Long> {

    List<Contact> findAllByUser(User user);

    List<Contact> findBySurnameStartsWithIgnoreCase(String surname);

}
