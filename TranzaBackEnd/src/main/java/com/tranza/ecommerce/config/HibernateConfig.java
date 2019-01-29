package com.tranza.ecommerce.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages= "{com.tranza}")
public class HibernateConfig {
	
	/*@Bean(name = "dataSource")
	public DataSource getDataSource()
	{
		System.out.println("Data Source Method");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		
		dataSource.setUrl("jdbc:mysql://localhost:3306/ecommerce");
		dataSource.setUsername("root");
		dataSource.setPassword("root");		
		return dataSource;
	}
		
	
	@Autowired
	@Bean(name ="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		//hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		sessionBuilder.addProperties(hibernateProperties);		
		sessionBuilder.scanPackages("com.tranza");
		//sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Category.class);
		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}*/
	
	/*@Autowired
	@Bean(name="dataSource")
	public DataSource getH2DataSource()
	{
		System.out.println("Data Source Method");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/ecommerce");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		System.out.println("Data Source Created");
		return dataSource;
	}
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");

		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.scanPackages("com.tranza");
		//sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Category.class);
		return sessionBuilder.buildSessionFactory();
	}

    @Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}
    */
    
    
    @Autowired
	@Bean("dataSource")
	public DataSource getDataSource()
	{
		System.out.println("Data Source Method");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/ecommerce");
		dataSource.setUsername("tranza");
		dataSource.setPassword("tranza");
		System.out.println("Data Source Created");
		return dataSource;
	}
	private Properties getHibernateProperties() {
		System.out.println("In properties Method");
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");

		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.scanPackages("com.tranza");
		//sessionBuilder.addAnnotatedClass(Category.class);
		//sessionBuilder.addAnnotatedClass(Product.class);
		return sessionBuilder.buildSessionFactory();
	}

	/*@Bean(name="categoryDAO")
	public CategoryDao getCategoryDAO(SessionFactory sessionFactory)
	{
		return new CategoryDao(sessionFactory);
	}
	*/
    @Autowired 
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}	
}