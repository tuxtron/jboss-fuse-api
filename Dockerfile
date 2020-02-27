FROM docker.io/tuxtron/api-final

# User root user to install software
#USER root

#copiar configuración
COPY org.ops4j.pax.url.mvn.cfg /opt/jboss/jboss-full/etc/org.ops4j.pax.url.mvn.cfg
COPY conf /opt/jboss/jboss-full/etc/
#RUN svn checkout http://lv36papf-svncorp.swm.com.ar:8888/svn/swiss/NuevosProductos/operaciones/prepare-for-deploy/trunk/deploy-ot/fuse-properties/OPENSHIFT-DEV-MOBILE-BCK-NODO1 /opt/jboss/jboss-full/etc/ --username Ramon-Fernandez --password rf637

#dependencias
COPY pom.xml /opt/jboss/jboss-full/

#script de instalacion de dependencias
COPY script.sh /opt/jboss/jboss-full/

#RUN mvn install -f /opt/jboss/jboss-full/pom.xml
#RUN chmod +x /opt/jboss/jboss-full/script.sh

COPY deploy/sqljdbc41.jar /opt/jboss/jboss-full/deploy/
COPY deploy/jconn3-6.0.26312.jar /opt/jboss/jboss-full/deploy/
COPY deploy/smg-esb-features-mobile-1.0.0-ALPHA.5 /opt/jboss/jboss-full/deploy/
WORKDIR /opt/jboss/jboss-full/deploy
RUN mvn install:install-file -Dfile=sqljdbc41.jar -Dpackaging=jar -DgroupId=com.microsoft.sqlserver -DartifactId=sqljdbc4 -Dversion=4.0
RUN mvn install:install-file -Dfile=jconn3-6.0.26312.jar -Dpackaging=jar -DgroupId=com.sybase -DartifactId=jconn3 -Dversion=6.0.26312
RUN mvn install:install-file -Dfile=smg-esb-features-mobile-1.0.0-ALPHA.5.jar -Dpackaging=jar -DgroupId=smg.esb.features.mobile -DartifactId=smg-esb-features-mobile -Dversion=4.0

#RUN /opt/jboss/jboss-full/script.sh

#copiar jar
COPY deploy /opt/jboss/jboss-full/deploy/


EXPOSE 8181 8101 18181 1099 44444 61616 1883 5672 61613 61617 8883 5671 61614

###
CMD ["/opt/jboss/jboss-full/bin/fuse", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
