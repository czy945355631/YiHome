package com.asjy.YiHome;

import java.util.Scanner;

public class test1 {

    public static String interweave (String str1, String str2){
        String newstr = "";
        if (str1.length()>=str2.length()){
            for (int i = 0; i < str1.length(); i++) {
                newstr += str1.substring(i,i+1);
                if (i<str2.length()){
                    newstr += str2.substring(i,i+1);
                }
            }
        }else {
            for (int i = 0; i < str2.length(); i++) {
                if (i<str1.length()){
                    newstr += str1.substring(i,i+1);
                }
                newstr += str2.substring(i,i+1);

            }
        }
        return newstr;
    }


    public static void main(String[] args){Scanner in=new Scanner(System.in);

        String str=in.nextLine();
        String [] arr = str.split("\\s+");
        String interweave = interweave(arr[0], arr[1]);
        System.out.println(interweave);

    }
}
