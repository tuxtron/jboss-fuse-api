/opt/jboss/jboss-full/bin/karaf & \
sleep 60 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install jndi/1.0.0 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-mybatis && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-quartz2 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-script-javascript && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-velocity/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-xmljson/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-http4/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-jsonpath/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-jackson/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install cxf-rs-security-cors/3.0.4.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install spring-web/3.2.12.RELEASE_2 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install spring-jdbc/3.2.12.RELEASE_2 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.atomikos/transactions-api/3.9.3' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.atomikos/transactions-jdbc/3.9.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.atomikos/transactions-jta/3.9.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.atomikos/atomikos-util/3.9.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.atomikos/transactions-osgi/3.9.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:commons-dbcp/commons-dbcp/1.4' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.springframework/spring-jdbc/2.5.5' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.mybatis/mybatis-spring/1.2.2' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.google.guava/guava/19.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:commons-digester/commons-digester/1.8.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:commons-validator/commons-validator/1.5.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.google.code.gson/gson/2.3' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.googlecode.json-simple/json-simple/1.1.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.json/json/20160810' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.threeten/threetenbp/1.3.3' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.doctusoft/json-schema-java7/1.4.1.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:commons-beanutils/commons-beanutils/1.9.4' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.codehaus.jackson/jackson-core-asl/1.9.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.codehaus.jackson/jackson-mapper-asl/1.9.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.codehaus.jackson/jackson-jaxrs/1.9.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.apache.httpcomponents/httpcore-osgi/4.3.3' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.apache.httpcomponents/httpclient-osgi/4.3.6' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.apache.camel/camel-http4/2.15.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.apache.camel/camel-core/2.15.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:net.minidev/asm/1.0.2' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:net.minidev/json-smart/2.1.1' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.jayway.jsonpath/json-path/1.2.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'shutdown -f' && \
sleep 10



