/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db;

/**
 *
 * @author SPVAIG
 */

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Locale;


public class GetDate {

    public static String getCurrentDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd");
        LocalDate localDate = LocalDate.now();
        String date = dtf.format(localDate);
        System.out.println(date);
        return date;
    }

    public static String getCurrentDateYear() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy");
        LocalDate localDate = LocalDate.now();
        String date = dtf.format(localDate);
        System.out.println(date);
        return date;
    }

    public static String getCurrentDatefull() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate localDate = LocalDate.now();
        String date = dtf.format(localDate);
        System.out.println(date);
        return date;
    }

    public static int getCurrentMontsLastDate() {
        Calendar cal = Calendar.getInstance();
        int res = cal.getActualMaximum(Calendar.DATE);
        return res;
    }

    public static String getCurrentFirstDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM");
        LocalDate localDate = LocalDate.now();
        String m = dtf.format(localDate);
        String mm = m;
        String yyyy = GetDate.getCurrentDateYear();
        String dd = "01";
        String month_first_date = yyyy + "-" + mm + "-" + dd;
        System.out.println(month_first_date);
        return month_first_date;
    }

    public static String getCurrentMonthMidDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM");
        LocalDate localDate = LocalDate.now();
        String m = dtf.format(localDate);
        String mm = m;
        String yyyy = GetDate.getCurrentDateYear();
        String dd = "15";
        String month_first_date = yyyy + "-" + mm + "-" + dd;
        System.out.println(month_first_date);
        return month_first_date;
    }

    public static String getCurrentMonthName() {
        Calendar mCalendar = Calendar.getInstance();
        String month = mCalendar.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.getDefault());
        return month;
    }

    public static void main(String[] args) {
        System.out.println(GetDate.getCurrentMonthMidDate());
    }
}
