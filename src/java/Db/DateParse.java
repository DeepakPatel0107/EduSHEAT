/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db;

import static java.lang.ProcessBuilder.Redirect.to;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import static java.util.Date.from;
import javax.swing.JOptionPane;

/**
 *
 * @author SPVAIG
 */
public class DateParse {

    public int returnDays(String dat1, String date2) {
        SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
        int daysBetween = 0;
        try {
            Date dateBefore = myFormat.parse(dat1);
            Date dateAfter = myFormat.parse(date2);

            long difference = dateAfter.getTime() - dateBefore.getTime();
            if (difference > 0) {
                daysBetween = (int) (difference / (1000 * 60 * 60 * 24));
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return daysBetween;
    }

    public static void main(String[] args) throws ParseException {
        System.out.println(new DateParse().returnDays("2019-01-20", "2019-01-21"));
    }
}
