
package contactus;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



 
public class ContactDaoIMPl implements ContactDAO{

    
    @Override
    public void insert(Contact p) {
         try {
            
            Connection conn =load.Load.getInstance().getConnection();
            
            String query = "insert into contactus(name,email,contact,message) values (?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(4, p.getPhone());
            ps.setString(5, p.getMessage());
            
            ps.executeUpdate();
            
        } catch (SQLException e) 
        {
        }
    }

    /**
     *
     * @param p
     */
    
    @Override
    public void update(Contact p) {
         try
            {
            
            Connection conn =load.Load.getInstance().getConnection();
            
            String query = "UPDATE  CONTACTUS SET name=?, Email=?,Contact=?, Message=? WHERE id ="+p.getId();
            
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            
                
             
            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(4, p.getPhone());
            ps.setString(5, p.getMessage());
            
             ps.executeUpdate();
                   
                   
                  
    }
       catch(SQLException e)        
    {
       e.printStackTrace();
    }
            
            
    }

    
    @Override
    public Contact getContact(int pid) {
        try 
            {
            
                Connection conn =load.Load.getInstance().getConnection();
            
                String query = "select * from Contactus where id = ?";

                PreparedStatement ps = conn.prepareStatement(query);
                Contact p1= new Contact();

               ps.setInt(1, pid);
  

                ResultSet rs =  ps.executeQuery();
                
                while(rs.next() )
                {
                    Contact p =new Contact();

                    p.setId(rs.getInt("ID"));
                    p.setName(rs.getString("NAME"));
                    p.setEmail(rs.getString("EMAIl"));
                    p.setPhone(rs.getString("CONTACT"));
                    p.setMessage(rs.getString("MESSAGE"));

                    System.out.println(p.getName());      
                   System.out.println(p.getEmail());
                    return p;


                 }

        }
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
            
        return null;
    }

    @Override
    public void delete(int pid)
    {
        try
        {
            
            Connection conn =load.Load.getInstance().getConnection();
            
            String query = "delete from Contactus where id = ? ";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setInt(1, pid);
            
            ps.executeUpdate();
            
        }
        catch(SQLException e) 
        {
            e.printStackTrace();
        }
    }

    
    @Override
    public List<Contact> getProfiles() {
        
            List<Contact> list= new ArrayList<>();
            try 
            {
            
                Connection conn =load.Load.getInstance().getConnection();
            
                String query = "select * from Contactus";

                PreparedStatement ps = conn.prepareStatement(query);

                      
                ResultSet rs =  ps.executeQuery();
                
                while(rs.next() )
                {
                    Contact p =new Contact();

                    p.setId(rs.getInt("ID"));
                    p.setName(rs.getString("NAME"));
                    p.setEmail(rs.getString("EMAIl"));
                    p.setPhone(rs.getString("CONTACT"));
                    p.setMessage(rs.getString("MESSAGE"));

                    System.out.println(p.getName());      
                    list.add(p);



                 }

        }
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
            
        return list;
    }

}