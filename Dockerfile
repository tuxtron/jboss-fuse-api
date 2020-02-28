FROM docker.io/tuxtron/api-final

# User root user to install software
#USER root

#copiar configuración
COPY org.ops4j.pax.url.mvn.cfg /opt/jboss/jboss-full/etc/org.ops4j.pax.url.mvn.cfg
COPY conf /opt/jboss/jboss-full/etc/
#RUN svn checkout http://lv36papf-svncorp.swm.com.ar:8888/svn/swiss/NuevosProductos/operaciones/prepare-for-deploy/trunk/deploy-ot/fuse-properties/OPENSHIFT-DEV-MOBILE-BCK-NODO1 /opt/jboss/jboss-full/etc/ --username Ramon-Fernandez --password rf637

#dependencias
#COPY pom.xml /opt/jboss/jboss-full/

#script de instalacion de dependencias
#COPY script.sh /opt/jboss/jboss-full/

#RUN chmod +x /opt/jboss/jboss-full/script.sh

#COPY deploy/sqljdbc41.jar /opt/jboss/jboss-full/deploy/
#COPY deploy/jconn3-6.0.26312.jar /opt/jboss/jboss-full/deploy/
#COPY deploy/smg-esb-features-mobile-1.0.0-ALPHA.5 /opt/jboss/jboss-full/deploy/
#WORKDIR /opt/jboss/jboss-full/deploy
#RUN mvn install:install-file -Dfile=sqljdbc41.jar -Dpackaging=jar -DgroupId=com.microsoft.sqlserver -DartifactId=sqljdbc4 -Dversion=4.0
#RUN mvn install:install-file -Dfile=jconn3-6.0.26312.jar -Dpackaging=jar -DgroupId=com.sybase -DartifactId=jconn3 -Dversion=6.0.26312
#RUN mvn install:install-file -Dfile=smg-esb-features-mobile-1.0.0-ALPHA.5.jar -Dpackaging=jar -DgroupId=smg.esb.features.mobile -DartifactId=smg-esb-features-mobile -Dversion=4.0

#RUN mvn install -f /opt/jboss/jboss-full/pom.xml

#RUN chmod +x /opt/jboss/jboss-full/script.sh
#RUN /opt/jboss/jboss-full/script.sh

#copiar jar
COPY deploy /opt/jboss/jboss-full/deploy/
RUN mvn install:install-file -Dfile=smg-esb-features-mobile-1.0.0-ALPHA.5.jar -Dpackaging=jar -DgroupId=smg.esb.features.mobile -DartifactId=smg-esb-features-mobile -Dversion=4.0
RUN mvn install:install-file -Dfile=api-tracker-sdk-1.1.0-FINAL.jar -Dpackaging=jar -DgroupId=api.tracker.sdk -DartifactId=api-tracker-sdk -Dversion=4.0
RUN mvn install:install-file -Dfile=cryptolib-1.0.0-ALPHA.3.jar -Dpackaging=jar -DgroupId=cryptolib -DartifactId=cryptolib -Dversion=4.0
RUN mvn install:install-file -Dfile=fuse-bundle-api-flow-1.7.1-FINAL.jar -Dpackaging=jar -DgroupId=fuse.bundle.api.flow -DartifactId=fuse-bundle-api-flow -Dversion=4.0
RUN mvn install:install-file -Dfile=fuse-bundle-api-model-1.4.2-FINAL.jar -Dpackaging=jar -DgroupId=fuse.bundle.api.model -DartifactId=fuse-bundle-api-model -Dversion=4.0
RUN mvn install:install-file -Dfile=fuse-bundle-api-rules-1.5.0-FINAL.jar -Dpackaging=jar -DgroupId=fuse.bundle.api.rules -DartifactId=fuse-bundle-api-rules -Dversion=4.0
RUN mvn install:install-file -Dfile=fuse-bundle-device-service-1.0.0-FINAL.jar -Dpackaging=jar -DgroupId=fuse-bundle.device.service -DartifactId=fuse-bundle-device-service -Dversion=4.0
RUN mvn install:install-file -Dfile=fuse-bundle-ds-sybase-gps-smg-1.1.0-FINAL.jar -Dpackaging=jar -DgroupId=fuse.bundle.ds.sybase-gps.smg -DartifactId=fuse-bundle-ds-sybase-gps-smg -Dversion=4.0
RUN mvn install:install-file -Dfile=fuse-bundle-telemedicina-adjunto-1.0.0-BETA.jar -Dpackaging=jar -DgroupId=fuse.bundle.telemedicina.adjunto -DartifactId=fuse-bundle-telemedicina-adjunto -Dversion=4.0




EXPOSE 8181 8101 18181 1099 44444 61616 1883 5672 61613 61617 8883 5671 61614

###
CMD ["/opt/jboss/jboss-full/bin/fuse", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
