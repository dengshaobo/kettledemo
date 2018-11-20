package cn.com.siemens.trm.service.impl;

import cn.com.siemens.trm.annotation.TargetDataSource;
import cn.com.siemens.trm.commons.DatabaseType;
import cn.com.siemens.trm.dao.DatabaseMetaDao;
import cn.com.siemens.trm.entities.DatabaseMeta;
import cn.com.siemens.trm.service.DatabaseMetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DatabaseMetaServiceImpl implements DatabaseMetaService {


    @Autowired
    private DatabaseMetaDao databaseMetaDao;


    @Override
    @TargetDataSource(type = DatabaseType.REPOSITORY)
    public DatabaseMeta getDatabaseMeta(int id) {
        return databaseMetaDao.getDatabaseMeta(id);
    }

    @Override
    public int insertDatabaseMeta(DatabaseMeta databaseMeta) {
        return databaseMetaDao.insertDatabaseMeta(databaseMeta);
    }

    @Override
    public int updateDatabaseMeta(DatabaseMeta databaseMeta) {
        return databaseMetaDao.updateDatabaseMeta(databaseMeta);
    }

    @Override
    public int deleteDatabaseMeta(int id) {
        return databaseMetaDao.deleteDatabaseMeta(id);
    }
}
