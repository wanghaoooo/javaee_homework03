package org.example.javaee.class01.jdbc;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class DatabasePool {

    private static HikariDataSource hikariDataSource;

    public static HikariDataSource getHikariDataSource(){

        if(null != hikariDataSource){
            return hikariDataSource;
        }

        synchronized (DatabasePool.class){
            if(null == hikariDataSource){
                String jdbcUrl = "jdbc:mysql://127.0.0.1:3306/school?useUnicode=true&characterEncoding=utf8&useSSL=false";
                String driverName = "com.mysql.cj.jdbc.Driver";

                HikariConfig hikariConfig = new HikariConfig();
                hikariConfig.setUsername("root");
                hikariConfig.setPassword("wh13716612056");
                hikariConfig.setDriverClassName(driverName);
                hikariConfig.setJdbcUrl(jdbcUrl);
                hikariDataSource = new HikariDataSource(hikariConfig);
                return hikariDataSource;
            }
        }
        return hikariDataSource;
    }

    public static void main(String[] args) {
        while (true){
            getHikariDataSource();
//            try {
//                Thread.sleep(3000);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
        }


    }

}
