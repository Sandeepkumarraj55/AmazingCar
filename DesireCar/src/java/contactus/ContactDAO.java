/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contactus;

import profiles.*;
import java.util.List;

/**
 *
 * @author Karan Singh
 */
public interface ContactDAO {
    
    void insert(Contact p);
    void update(Contact p);
    void delete(int pid);
    
    
    Contact getContact(int pid);
    List<Contact> getProfiles();

    

   
}
