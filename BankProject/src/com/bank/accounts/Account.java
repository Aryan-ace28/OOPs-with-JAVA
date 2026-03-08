package com.bank.accounts;
// import com.bank.exceptions.InsufficientBalanceException;
import com.bank.exceptions.InsufficientBalanceException;
import com.bank.util.BankUtil;

public class Account {

    protected int accountNumber;
    protected double balance;

    public Account(int accountNumber,double balance) throws Exception{

        BankUtil.validateMinimumBalance(balance);

        this.accountNumber = accountNumber;
        this.balance = balance;
    }

    public void deposit(double amount){
        balance += amount;
        System.out.println("Deposit successful: " + amount);
    }

    public void withdraw(double amount) throws InsufficientBalanceException{

        if(amount > balance){
            throw new InsufficientBalanceException("Insufficient Balance!");
        }

        balance -= amount;
        System.out.println("Withdrawal successful: " + amount);
    }

    public double getBalance(){
        return balance;
    }
}