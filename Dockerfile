FROM  quay.io/keycloak/keycloak:16.1.0

## copy temp
COPY  temp/* /opt/jboss/keycloak/themes/base/admin/resources/partials/
## copy icon
COPY  ui/font_iconfont /opt/jboss/keycloak/themes/keycloak/common/resources/lib/font_iconfont
## copy theme.properties
COPY  ui/theme.properties /opt/jboss/keycloak/themes/keycloak/login/
## copy jar
COPY  target/keycloak-justauth-12.0.1-jar-with-dependencies.jar /opt/jboss/keycloak/providers/
