
package load;
import java.sql.Connection;
import java.sql.DriverManager;

public class Load {
    
    private static Load obj=new Load();
    private Connection conn;
    
    private Load() {
        try  {
     Class.forName ("org.apache.derby.jdbc.ClientDriver");
     this.conn=DriverManager.getConnection("jdbc:derby://localhost:1527/cardb", "niit", "niit");
        System.out.println("Connected");
    }
    
        catch(Exception e) 
        {
        e.printStackTrace();
        
          }
            }
    public static Load getInstance(){
        return obj;
  }
    public Connection getConnection(){
        return this.conn;
}
}