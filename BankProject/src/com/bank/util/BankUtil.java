package com.bank.util;

public class BankUtil {

    static int acc = 1001;

    public static int generateAccountNumber(){
        return acc++;
    }

    public static void validateMinimumBalance(double balance) throws Exception{

        if(balance < 1000){
            throw new Exception("Minimum balance must be ₹1000");
        }
    }
}