package cn.com.siemens.trm.service;

import cn.com.siemens.trm.entities.DatabaseMeta;

public interface DatabaseMetaService {
    DatabaseMeta getDatabaseMeta(int id);

    int insertDatabaseMeta(DatabaseMeta databaseMeta);

    int updateDatabaseMeta(DatabaseMeta databaseMeta);

    int deleteDatabaseMeta(int id);
}
