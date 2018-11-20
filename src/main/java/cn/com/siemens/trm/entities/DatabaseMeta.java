package cn.com.siemens.trm.entities;

import lombok.Data;

import java.io.Serializable;
import java.math.BigInteger;

@Data
public class DatabaseMeta implements Serializable {
    private BigInteger id_database;
    private String name;
    private int id_database_type;
    private int id_database_contype;
    private String host_name;
    private String database_name;
    private int port;
    private String username;
    private String password;
    private String servername;
    private String data_tbs;
    private String index_tbs;

}
