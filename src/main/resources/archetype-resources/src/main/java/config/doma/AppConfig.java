package ${package}.config.doma;

import javax.sql.DataSource;

import org.seasar.doma.jdbc.Config;
import org.seasar.doma.jdbc.dialect.Dialect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig implements Config {

  @Autowired
  private DataSource dataSource;

  @Autowired
  private Dialect dialect;

  @Override
  public DataSource getDataSource() {
    return this.dataSource;
  }

  @Override
  public Dialect getDialect() {
    return this.dialect;
  }
}
