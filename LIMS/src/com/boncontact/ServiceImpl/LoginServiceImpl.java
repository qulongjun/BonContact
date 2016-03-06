package com.boncontact.ServiceImpl;

import com.boncontact.Dao.LoginDao;
import com.boncontact.Domain.Login;
import com.boncontact.Service.LoginService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class LoginServiceImpl implements LoginService{
    @Resource
    private LoginDao loginDao;
    @Override
    public boolean login_find(String username, String password) {
        if(username!=null&&password!=null){
            List<Login> loginList = loginDao.findBySQL(" WHERE username= '"+username+"' AND password= '"+password+"'");
            if(loginList.size()!=0){
                return true;
            }
        }
        return false;
    }
}
