package com.asjy.YiHome;

import java.util.Scanner;

public class BookDemo {
    public static void main(String[] args){
        Book b1 = new Book();
        b1.setTitle("Moby Dick");
        b1.setYear(1851);
        Book b2 = new Book();
        b2.setTitle("A Handmaid's Tale");
        b2.setYear(1985);
        int old1 = b1.howOld();
        int old2 = b1.howOld();
        System.out.println(b1.title+" is "+b1.howOld()+" years old");
        System.out.println(b2.title+" is "+b2.howOld()+" years old");
    }

}
