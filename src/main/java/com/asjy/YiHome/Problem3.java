package com.asjy.YiHome;

import java.util.Scanner;
import java.util.regex.Pattern;

public class Problem3 {

    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);
        String inputString = sc.nextLine();
        String stringArray[] = inputString.split(" ");
        int rc[] = new int[2];
        char characters[] = new char[stringArray.length-4];
        String replace[] = new String[2];

        //提取r*c的个数
        int rcLength = 0;
        int charactersLength = 0;
        int replaceLength = 0;

        for (int i = 0; i < stringArray.length; i++) {
            //判断是否为replace
            //判断是否为rc
            //判断是否为character
            if (stringArray[i].length()>1){
                replace[replaceLength] = stringArray[i];
                replaceLength++;
            }else {
                if (Pattern.compile("^[-\\+]?[\\d]*$").matcher(stringArray[i]).matches()){
                    rc[rcLength] = Integer.parseInt(stringArray[i]);
                    rcLength++;
                }else {
                    characters[charactersLength] = stringArray[i].toCharArray()[0];
                    charactersLength++;
                }

            }
        }
        int row = rc[0];
        int columns = rc[1];


        for (int i = 0; i < row; i++) {
            for (int i1 = 0; i1 < columns; i1++) {
                System.out.print(characters[i*columns+i1]);
                System.out.print(" ");
            }
            System.out.println("");
        }

//        char[] newChar = new char[characters.length];
        int count = 0;
        for (int i = 0; i < characters.length-1; i++) {
            if (characters[i] == replace[0].toCharArray()[0]){
                //如果为a 则循环后面有几个a
                //有n个 则看后面有y个g  若n=0 则g应=1
                int counta = 0;
                int countb = 0;
                int i1 = 0;
                //定义a的末尾位置+1
                int i2 = 0;
                //定义b的末尾位置
                for (i1 = i+1; i1<characters.length-1;i1++){
                    if (characters[i1] == replace[0].toCharArray()[0]){
                        counta++;
                    }else {
                        //若不是a了，则结束，并定位到该位置
                        break;
                    }
                }
                System.out.print("a的数量 -- "+ (counta+1) +" ");

                System.out.println("末尾a的后一位 -- "+i1);

                boolean flag2 = false;
                for (i2 = i1; i2 < i1+counta+1; i2++) {
                    System.out.println("当前i="+i2);
                    if (i2 == characters.length || characters[i2] != replace[0].toCharArray()[1]){
                        System.out.println("找到b");
                        i2-=1;
                        break;
                    }else if (characters[i2] == replace[0].toCharArray()[1]){
                        System.out.println("没找到");
                        
                        countb++;
                    }
                }
                System.out.print("b的数量 -- "+ countb +" ");
                System.out.println("b -- "+i2);

                if (countb == 0){
                    //如果没有b，则定位到a的下一位
                    i=i1-1;
                    continue;
                }else {
                    if (counta+1 > countb){
                        System.out.println("a大于b");

                        count+=countb;
                        for (int i3 = i1-countb; i3 < (i1 + countb - 1); i3++) {
                            System.out.println(i3);

                            characters[i3] = replace[1].toCharArray()[1];
                        }
                        i = i1+countb-1;
                    }else if(counta+1 <= countb){
                        System.out.println("a小于等于b");
                        count = counta+1 + count;
                        System.out.println(i1);

                        for (int i4 = i; i4 < (i1 + counta+1); i4++) {
                            if (i4 - i < (i1 + counta+1-i)/2){
                                characters[i4] = replace[1].toCharArray()[0];
                            }else {
                                System.out.println(i4);
                                characters[i4] = replace[1].toCharArray()[1];
                            }
                        }
                        i = i1 + counta - 1;
                    }

                }
            }
        }
        System.out.println("Count: " + count);
        System.out.println("");
        
        
        for (int i = 0; i < row; i++) {
            for (int i1 = 0; i1 < columns; i1++) {
                System.out.print(characters[i*columns+i1]);
                System.out.print(" ");
            }
            System.out.println("");
        }

//        4 3 A G H A G M A A G G A M AG **
//        3 3 A C B A B B C A B AB --
//        2 4 Y A Y A Y A Y A YA NO

    }
}
