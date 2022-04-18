package com.ctwyrth.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctwyrth.bookclub.models.Book;
import com.ctwyrth.bookclub.repositories.BookRepository;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;
    
    // shows all
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }

    // creates one
    public Book createBook(Book e) {
        return bookRepository.save(e);
    }

    // retrieves one by id
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }

    // updates one
    public Book updateBook(Book e) {
       	return bookRepository.save(e);
    }
    
    // deletes one
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }
}