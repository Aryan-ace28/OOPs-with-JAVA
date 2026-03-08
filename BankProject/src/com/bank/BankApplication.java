package com.bank;

import com.bank.accounts.*;
import com.bank.customers.Customer;
import com.bank.loans.Loan;

import static com.bank.util.BankUtil.generateAccountNumber;

public class BankApplication {

    public static void main(String[] args) {

        try {

            Customer customer = new Customer(101, "Ravi");

            int accNo = generateAccountNumber();

            SavingsAccount account = new SavingsAccount(accNo, 5000, 5);

            customer.linkAccount(account);

            account.deposit(2000);

            account.withdraw(1000);

            double interest = account.calculateInterest();

            System.out.println("Interest: " + interest);

            Loan loan = new Loan(100000, 5, 2);

            double emi = loan.calculateEMI();

            System.out.println("Loan EMI: " + emi);

            customer.displayCustomerDetails();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}