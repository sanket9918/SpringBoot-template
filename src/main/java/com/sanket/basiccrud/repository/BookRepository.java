package com.sanket.basiccrud.repository;

import com.sanket.basiccrud.model.Book;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface BookRepository extends MongoRepository<Book, String> {

}
