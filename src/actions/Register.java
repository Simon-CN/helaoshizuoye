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

        session.save(user);
        tx.commit();

        return SUCCESS;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
