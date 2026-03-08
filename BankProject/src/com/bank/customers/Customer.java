package com.bank.customers;

import com.bank.accounts.Account;

public class Customer {

    int customerId;
    String name;
    Account account;

    public Customer(int id,String name){
        this.customerId = id;
        this.name = name;
    }

    public void linkAccount(Account account){
        this.account = account;
    }

    public void displayCustomerDetails(){

        System.out.println("Customer ID: " + customerId);
        System.out.println("Name: " + name);
        System.out.println("Balance: " + account.getBalance());
    }
}