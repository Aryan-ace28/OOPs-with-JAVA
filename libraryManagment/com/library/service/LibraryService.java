package com.library.service;

import com.library.books.Book;
import com.library.exception.BookNotFoundException;
import com.library.exception.BookNotAvailableException;

import java.io.*;
import java.util.*;

public class LibraryService {

    private List<Book> books = new ArrayList<>();
    private final String FILE_NAME = "books.txt";

    public void addBook(Book b) {

        books.add(b);

        try {
            BufferedWriter bw = new BufferedWriter(new FileWriter(FILE_NAME, true));
            bw.write(b.getBookId() + "," + b.getTitle() + "," + b.getAuthor() + "," + b.getAvailableCopies());
            bw.newLine();
            bw.close();
        } catch (IOException e) {
            System.out.println("Error writing file");
        }
    }

    public void viewBooks() {

        try {
            BufferedReader br = new BufferedReader(new FileReader(FILE_NAME));

            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }

            br.close();
        } catch (IOException e) {
            System.out.println("Error reading file");
        }
    }

    public void issueBook(int bookId) throws BookNotFoundException, BookNotAvailableException {

        for (Book b : books) {

            if (b.getBookId() == bookId) {

                if (b.getAvailableCopies() == 0) {
                    throw new BookNotAvailableException("Book not available");
                }

                b.setAvailableCopies(b.getAvailableCopies() - 1);
                System.out.println("Book issued successfully");
                return;
            }
        }

        throw new BookNotFoundException("Book ID not found");
    }

    public void returnBook(int bookId) throws BookNotFoundException {

        for (Book b : books) {

            if (b.getBookId() == bookId) {
                b.setAvailableCopies(b.getAvailableCopies() + 1);
                System.out.println("Book returned successfully");
                return;
            }
        }

        throw new BookNotFoundException("Book ID not found");
    }
}
