/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author KHALIMATUS SYADIAH
 */
public class koneksi {

        private static Connection MYSQlConfig;
    
        public static Connection configDB()throws SQLException{
            try{
                String url ="jdbc:mysql://localhost:3306/pegawaian";
                String user ="root";
                String pass ="";
        
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                MYSQlConfig = DriverManager.getConnection(url, user, pass);
       }catch (SQLException e){
           System.out.println("Koneksi ke Database Gagal " + e.getMessage());
        }
            
         return MYSQlConfig;
    }
    
}
