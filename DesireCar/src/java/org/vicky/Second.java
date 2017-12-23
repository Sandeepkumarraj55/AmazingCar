
package org.vicky;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author Vikram Singh Negi
 */
public class Second {
   
    private String name;
    private String contact;
    private String mail;
    private String pass;
    private String address;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }

    /**
     * @return the mail
     */
    public String getMail() {
        return mail;
    }

    /**
     * @param mail the mail to set
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the repass
     */
    public String getRepass() {
        return address;
    }

    /**
     * @param repass the repass to set
     */
    public void setRepass(String address) {
        this.address = address;
    }
    public int store() throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
         
        String url="jdbc:derby://localhost:1527/cardb;create=true;user=niit;password=niit";
        Connection con=DriverManager.getConnection(url);

        PreparedStatement ps = con.prepareStatement("insert into profiles(name,phone,email,password,address)values (?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, contact);
        ps.setString(3, mail);
        ps.setString(4, pass);
        ps.setString(5, address);
    
        int a=ps.executeUpdate();
    
                
        if(a==1) {
            return a;
        }else {
            return a;
        }
    }
    
    

}
