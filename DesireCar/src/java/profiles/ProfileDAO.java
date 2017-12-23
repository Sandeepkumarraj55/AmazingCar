/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profiles;

import java.util.List;

/**
 *
 * @author Karan Singh
 */
public interface ProfileDAO {
    
    void insert(Profiles p);
    void update(Profiles p);
    void delete(int pid);
    
    
    Profiles getProfiles(int pid);
    List<Profiles> getProfiles();

    

   
}
