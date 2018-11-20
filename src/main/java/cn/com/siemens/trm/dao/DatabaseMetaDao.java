package cn.com.siemens.trm.dao;

import cn.com.siemens.trm.entities.DatabaseMeta;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface DatabaseMetaDao {
    DatabaseMeta getDatabaseMeta(@Param("id") int id);

    int insertDatabaseMeta(DatabaseMeta databaseMeta);

    int updateDatabaseMeta(DatabaseMeta databaseMeta);

    int deleteDatabaseMeta(int id);

}
