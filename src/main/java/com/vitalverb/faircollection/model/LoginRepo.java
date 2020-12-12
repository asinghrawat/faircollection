package com.vitalverb.faircollection.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepo extends JpaRepository<Login, Long> {

	Login findByUsername(String userName);

}
