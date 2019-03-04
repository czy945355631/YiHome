package com.asjy.YiHome;


import java.util.Scanner;

public class test2 {
    public static boolean sameArrayBackwards (int [] arr){
        if (arr[0] == arr.length-1){
            boolean flag = false;
            int newarr[] = new int[arr[0]];
            for (int i = 1; i < arr.length; i++) {
                newarr[i-1] = arr[i];
            }

            for (int i = 0; i < newarr.length; i++) {
                if (i>=(newarr.length-i-1)){
                    break;
                }
                if (newarr[i] == newarr[newarr.length-i-1]){
                    flag =true;
                }else {
                    flag = false;
                    break;
                }

            }
            return flag;
        }else {

            return false;
        }
    }
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);
        String inputString = sc.nextLine();
        System.out.println(inputString);

        String stringArray[] = inputString.split(" ");
        int num[] = new int[stringArray.length];
        for (int i = 0; i < stringArray.length; i++) {
            num[i] = Integer.parseInt(stringArray[i]);
        }
        boolean b = sameArrayBackwards(num);
        System.out.println(b);
    }

}
