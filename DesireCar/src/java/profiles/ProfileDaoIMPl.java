package profiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProfileDaoIMPl implements ProfileDAO {
    
    @Override
    public void insert(Profiles p) {
         try {
            Connection conn =load.Load.getInstance().getConnection();
            String query = "insert into Profiles(name,email,password,phone,address) values (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getPassword());
            ps.setString(4, p.getPhone());
            ps.setString(5, p.getAddress());
            ps.executeUpdate();
            
        } catch (SQLException e) 
        {
        } 
    }
    
    @Override
    public void update(Profiles p) {
         try
            {
            
            Connection conn =load.Load.getInstance().getConnection();
            
            String query = "UPDATE  PROFILES SET name=?, Email=?, Phone=? WHERE id ="+p.getId();
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            
            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getPhone());
            ps.executeUpdate();
                  
    }
       catch(SQLException e)        
    {
       e.printStackTrace();
    }}
    
    @Override
    public Profiles getProfiles(int pid) {
        try 
            {
            
                Connection conn =load.Load.getInstance().getConnection();
            
                String query = "select * from Profiles where id = ?";

                PreparedStatement ps = conn.prepareStatement(query);
                Profiles p1= new Profiles();

               ps.setInt(1, pid);
  

                ResultSet rs =  ps.executeQuery();
                
                while(rs.next() )
                {
                    Profiles p =new Profiles();

                    p.setId(rs.getInt("ID"));
                    p.setName(rs.getString("NAME"));
                    p.setEmail(rs.getString("EMAIl"));
                    p.setPassword(rs.getString("PASSWORD"));
                    p.setPhone(rs.getString("PHONE"));
                    p.setAddress(rs.getString("ADDRESS"));

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
            
            String query = "delete from Profiles where id = ? ";
            
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
    public List<Profiles> getProfiles() {
        
            List<Profiles> list= new ArrayList<>();
            try 
            {
                Connection conn =load.Load.getInstance().getConnection();
                String query = "select * from Profiles";
                PreparedStatement ps = conn.prepareStatement(query);
                ResultSet rs =  ps.executeQuery();
                
                while(rs.next() )
                {
                    Profiles p =new Profiles();
                    p.setId(rs.getInt("ID"));
                    p.setName(rs.getString("NAME"));
                    p.setEmail(rs.getString("EMAIl"));
                    p.setPassword(rs.getString("PASSWORD"));
                    p.setPhone(rs.getString("PHONE"));
                    p.setAddress(rs.getString("ADDRESS"));

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