package com.asjy.YiHome;

public class Book {
    String title;
    int year;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
    int howOld(){
        return 2019-year;
    }
}
