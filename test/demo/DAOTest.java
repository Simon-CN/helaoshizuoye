package demo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.Test;
/**
 * Created by SX on 2017/6/11.
 */
public class DAOTest {
    Configuration config = null;
    SessionFactory sessionFactory = null;
    Session session = null;
    Transaction tx = null;
    @org.junit.Before
    public void init() {
        config = new Configuration().configure("/hibernate.cfg.xml");
        sessionFactory = config.buildSessionFactory();
        session = sessionFactory.openSession();
        tx = session.beginTransaction();
    }
    //增加
    @Test
    public void insert() {
        UserEntity ue = new UserEntity();
        ue.setUsername("Anny");
        ue.setPassword("123");
        session.save(ue);
        tx.commit();
    }
    //修改
    @Test
    public void update() {
        UserEntity user = (UserEntity) session.get(UserEntity.class, new Integer(2));
        user.setUsername("Penny");
        session.update(user);
        tx.commit();
        session.close();
    }
    //查找
    //@Test
    public void getById() {
        UserEntity user = (UserEntity) session.get(UserEntity.class, new Integer(8));
        tx.commit();
        session.close();
        System.out.println("ID号：" + user.getId() + "；用户名：" + user.getUsername() +
                "；密码：" + user.getPassword() );
    }
    //删除
    //@Test
    public void delete() {
        UserEntity user = (UserEntity) session.get(UserEntity.class, new Integer(6));
        session.delete(user);
        tx.commit();
        session.close();
    }
}
