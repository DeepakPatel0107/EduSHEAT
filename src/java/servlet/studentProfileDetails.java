/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Db.DBConnection;
import Db.GetCurrentDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import sun.security.pkcs11.wrapper.Functions;
/**
 *
 * @author deepa
 */

@WebServlet(name = "studentProfileDetails", urlPatterns = {"/studentProfileDetails"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1,maxFileSize = 1024 * 1024 * 10)
public class studentProfileDetails extends HttpServlet {

      private static final String SAVE_DIR = "Student-Profile";
    boolean st = false;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        
String name=request.getParameter("name");
String father=request.getParameter("fname");
String mother=request.getParameter("mname");
String dob=request.getParameter("dob");
String nationality=request.getParameter("nationality");
String schoolName=request.getParameter("collage");
String board=request.getParameter("university");
String course=request.getParameter("course");
String percentage=request.getParameter("percentage");
String enrollment=request.getParameter("rollNumber");
String collegeAddress=request.getParameter("collegeAddress");
String collegeDistrict=request.getParameter("collegeDistirct");
String collegeState=request.getParameter("collegeState");
String address=request.getParameter("yourAddress");
String district=request.getParameter("yourDistrict");
String state=request.getParameter("yourState");
String pincode=request.getParameter("yourPincode");
String email=request.getParameter("yourEmail");
String mobile=request.getParameter("yourMobile");
String course1=request.getParameter("course1");
String course2=request.getParameter("course2");
String course3=request.getParameter("course3");
 String date=new GetCurrentDate().getCurrentDatefull();





       HttpSession session=request.getSession();  
        session.getAttribute("admin_id");

        
        
        
        Part file = null;
        String filePath = null, fileName = null;
        try {
            file = request.getPart("img");
            String savePath = getServletContext().getRealPath("") + File.separator + SAVE_DIR;
            File fileSaveDir = new File(savePath);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdir();
            }
            fileName = extractfilename(file);
           
            file.write(savePath + File.separator + fileName);
            filePath = savePath + File.separator + fileName;
            String inputImagePath = filePath;
            String outputImagePath1 = filePath;
            int scaledWidth = 180;
            int scaledHeight = 180;
            UpdateProfilePicture.resize(inputImagePath, outputImagePath1, scaledWidth, scaledHeight);
        } catch (Exception e) {
            out.print(e);
        }
        try {
          String query = "update student_registration set name='"+name+"',father='"+father+"',mother='"+mother+"',dob='"+dob+"',nation='"+nationality+"',school_name='"+schoolName+"',school_board='"+board+"',course='"+course+"',percentage='"+percentage+"',roll_No='"+enrollment+"',college_address='"+collegeAddress+"',college_district='"+collegeDistrict+"',college_state='"+collegeState+"',address='"+address+"',district='"+district+"',state='"+state+"', pincode='"+pincode+"',email='"+email+"',mobile='"+mobile+"',course1='"+course1+"',course2='"+course2+"',course3='"+course3+"',image_name='"+fileName+"',image_file='"+SAVE_DIR+"',image_path='"+filePath+"',date='"+date+"', status=1 where id=11";
    int i = new DBConnection().getQuery(query);
           
            if(i>0)
            {
                 out.print("<script>alert('Profile Updated Successfully...');</script>");
               RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("StudentLogin.jsp");
            requestDispatcher.forward(request, response);
            }
            else
            {
                out.print("<script>alert('Fail To Update Your Profile. Please Try Again...');</script>");
                 RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("StudentLogin.jsp");
            requestDispatcher.forward(request, response);
            }
        } catch (Exception e) {
            out.print(e);
        } finally {

        }

    }

    private String extractfilename(Part file) {
        String cd = file.getHeader("content-disposition");
        String[] items = cd.split(";");
        for (String string : items) {
            if (string.trim().startsWith("filename")) {
                return string.substring(string.indexOf("=") + 2, string.length() - 1);
            }
        }
        return "";
    }

    public static void resize(String inputImagePath, String outputImagePath, int scaledWidth, int scaledHeight) throws IOException {
        // reads input image
        File inputFile = new File(inputImagePath);
        BufferedImage inputImage = ImageIO.read(inputFile);

        // creates output image
        BufferedImage outputImage = new BufferedImage(scaledWidth,
                scaledHeight, inputImage.getType());

        // scales the input image to the output image
        Graphics2D g2d = outputImage.createGraphics();
        g2d.drawImage(inputImage, 0, 0, scaledWidth, scaledHeight, null);
        g2d.dispose();

        // extracts extension of output file
        String formatName = outputImagePath.substring(outputImagePath
                .lastIndexOf(".") + 1);

        // writes to output file
        ImageIO.write(outputImage, formatName, new File(outputImagePath));
    }

    public static void resize(String inputImagePath, String outputImagePath, double percent) throws IOException {
        File inputFile = new File(inputImagePath);
        BufferedImage inputImage = ImageIO.read(inputFile);
        int scaledWidth = (int) (inputImage.getWidth() * percent);
        int scaledHeight = (int) (inputImage.getHeight() * percent);
        resize(inputImagePath, outputImagePath, scaledWidth, scaledHeight);
    }
  

  
}
