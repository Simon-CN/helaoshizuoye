package actions;

import com.opensymphony.xwork2.ActionSupport;
import demo.UserEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Created by SX on 2017/6/11.
 */
public class Register extends BaseAction {
    UserEntity user;

    @Override
    public String execute() throws Exception {
        initDataContext();
        if(user.getEmail().equals("")||user.getUsername().equals("")||user.getPassword().equals("")){
            addActionError("请输入完整的信息...");
            return ERROR;
        }
        try {
            session.save(user);
            tx.commit();
            return SUCCESS;
        } catch (Exception e) {
            addActionError("注册失败！");
            return ERROR;
        }
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
