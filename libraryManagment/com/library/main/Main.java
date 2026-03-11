package com.library.main;

import com.library.books.Book;
import com.library.service.LibraryService;
import com.library.exception.*;

public class Main {

    public static void main(String[] args) {

        LibraryService service = new LibraryService();

        try {

            Book b1 = new Book(1, "Java Programming", "James Gosling", 5);
            Book b2 = new Book(2, "Data Structures", "Mark Allen", 3);

            service.addBook(b1);
            service.addBook(b2);

            System.out.println("Books in Library:");
            service.viewBooks();

            service.issueBook(1);
            service.returnBook(1);

        } catch (BookNotFoundException | BookNotAvailableException e) {

            System.out.println(e.getMessage());

        }
    }
}
