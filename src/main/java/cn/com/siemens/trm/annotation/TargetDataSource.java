package cn.com.siemens.trm.annotation;

import cn.com.siemens.trm.commons.DatabaseType;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * specify the datasource used above the methods
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface TargetDataSource {
    DatabaseType type() default DatabaseType.TRM;
}
