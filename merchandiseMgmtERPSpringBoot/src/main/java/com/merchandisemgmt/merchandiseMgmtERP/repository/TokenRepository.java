package com.merchandisemgmt.merchandiseMgmtERP.repository;

import com.merchandisemgmt.merchandiseMgmtERP.entity.Token;
import com.merchandisemgmt.merchandiseMgmtERP.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TokenRepository extends JpaRepository<Token, Long> {
//    Optional<User> findByEmail(String email);


    Optional<Token> findByToken(String token);
    @Query("""
select t from Token t inner join User u on t.user.id = u.id
where t.user.id = :userId and t.loggedOut = false
""")
    List<Token> findAllTokensByUser(Long userId);

}
