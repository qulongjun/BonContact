package com.boncontact.Action.Base;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.User;
import org.springframework.stereotype.Component;

/**
 * Created by qulongjun on 16/3/6.
 */
@Component("index")
public class IndexAction extends BaseAction<User>{
    public String index_page(){
        return SUCCESS;
    }
}
