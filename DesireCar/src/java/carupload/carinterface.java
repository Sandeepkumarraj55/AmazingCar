/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carupload;

import java.util.List;
import profiles.Profiles;

/**
 *
 * @author hp1
 */
public interface carinterface {
    
    public void insert(cargettersetter cgs);
        List  getcar_info();
        void delete(int pid);
        void update(cargettersetter p);
cargettersetter getcargettersetter(int p);
}
