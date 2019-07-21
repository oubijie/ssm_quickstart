package com.veryoo.ssmqs.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.core.exceptions.MybatisPlusException;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.FileOutConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.TemplateConfig;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;


/**
 * Mybatis Plus代码生成器示例
 * @author obj
 * @email oubijie@139.com
 * @vserion 2019年7月21日
 *
 */
public class MPCodeGenerator {


    public static void main(String[] args) {
        String packageName = "com.veryoo.ssmqs";   //父包名
        String tableName = "user";              //表名

        //1.全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        gc.setOutputDir(projectPath + "/src/main/java")
	        .setAuthor("oubijie")
	        .setOpen(false)
	        .setIdType(IdType.AUTO)
	        .setBaseResultMap(true)
	        .setBaseColumnList(true);
//          .setActiveRecord(true)
//          .setSwagger2(true)  //实体属性 Swagger2 注解
        

        //2.数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://localhost:3306/mp?useUnicode=true&useSSL=false&characterEncoding=utf8");
        dsc.setDriverName("com.mysql.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("root");
        

        //3.包配置
        PackageConfig pc = new PackageConfig();
        pc.setParent(packageName)
          .setXml("mapper");
        
        //4.策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
//        strategy.setSuperEntityClass("com.veryoo.mp.common.BaseEntity");   //Entity公共父类
//        strategy.setEntityLombokModel(true);
        strategy.setRestControllerStyle(true);
//        strategy.setSuperControllerClass("com.veryoo.mp.common.BaseController"); // Controller公共父类
        // 写于父类中的公共字段
//        strategy.setSuperEntityColumns("id");
        strategy.setInclude(tableName);    //要生成的模块名
        strategy.setControllerMappingHyphenStyle(true);
//        strategy.setTablePrefix(pc.getModuleName() + "_");
        
        //5. 自定义属性注入
        InjectionConfig injectionConfig = new InjectionConfig() {
            @Override
            public void initMap() {
               
            }
        };
        
        //6.整合配置并执行
        AutoGenerator mpg = new AutoGenerator();
        mpg.setGlobalConfig(gc);
        mpg.setDataSource(dsc);
        mpg.setPackageInfo(pc);
        mpg.setStrategy(strategy);
        mpg.setTemplate(new TemplateConfig());
        mpg.setCfg(injectionConfig);
        mpg.setTemplateEngine(new FreemarkerTemplateEngine());
        mpg.execute();
    }

}