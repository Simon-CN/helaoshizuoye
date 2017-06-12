package actions;

import com.opensymphony.xwork2.ActionSupport;
import demo.UserEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.util.List;

/**
 * Created by SX on 2017/6/11.
 */
public class LoginAction extends BaseAction {
    UserEntity user;
    Boolean error = false;

    @Override
    public String execute() throws Exception {
        if (user.getUsername().equals("")) {
            addActionError("请输入用户名");
            error = true;
        } else if (user.getPassword().equals("")) {
            addActionError("请输入密码");
            error = true;
        } else {
            initDataContext();
            List list = session.createQuery("from UserEntity u where u.username=? and u.password=?")
                    .setParameter(0, user.getUsername())
                    .setParameter(1, user.getPassword())
                    .list();
            if (list == null || list.isEmpty()) {
                addActionError("用户名密码错误");
                error = true;
            }
        }
        if (error)
            return ERROR;
        else
            return SUCCESS;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

}
