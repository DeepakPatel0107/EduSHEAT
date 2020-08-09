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
@WebServlet(name = "UploadFile2", urlPatterns = {"/UploadFile2"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, maxFileSize = 1024 * 1024 * 10)
public class UploadFile2 extends HttpServlet {

    private static final String SAVE_DIR = "Mail-Docs";
    boolean st = false;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String mailfrom = request.getParameter("mailfrom");
        String mailto = request.getParameter("mailto");
        String subject = request.getParameter("subject");
        String msg = request.getParameter("msg");

        String date = GetCurrentDate.getCurrentDatefull();
        long mailId = Math.round(Math.random() * 1000000000);

        Part file = null;
        String filePath = null, fileName = null;
        try {
            file = request.getPart("fileUpload");
            String savePath = getServletContext().getRealPath("") + File.separator + SAVE_DIR;
            File fileSaveDir = new File(savePath);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdir();
            }
            fileName = extractfilename(file);

            file.write(savePath + File.separator + fileName);
            filePath = savePath + File.separator + fileName;
//            String inputImagePath = filePath;
//            String outputImagePath1 = filePath;
//            int scaledWidth = 180;
//            int scaledHeight = 180;
//            UpdateProfilePicture.resize(inputImagePath, outputImagePath1, scaledWidth, scaledHeight);
        } catch (IOException | ServletException e) {
            // out.print(e);
        }
        String query = "insert into edusheat.mail ( mailId, mailfrom , mailto, subject,message,date, doc_name, doc_file, doc_path, status) values('" + mailId + "','" + mailfrom + "','" + mailto + "','" + subject + "','" + msg + "','" + date + "','" + fileName + "','" + SAVE_DIR + "','" + filePath + "','0')";
        int i = new DBConnection().getQuery(query);
        if (i > 0) {
out.print("<script>location.href='studentsPage/sentMail.jsp';</script>");
          //  response.sendRedirect("http://localhost:8084/AdminPages/sentMail.jsp");
        } else {
            out.print("<script>alert('Fail To Send Message. Please Try Again...');</script>");

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
