ARG keycloak_version=16.1.1

FROM quay.io/keycloak/keycloak:${keycloak_version}

ARG keycloak_version=16.1.1

## copy temp
COPY temp/* /opt/jboss/keycloak/themes/base/admin/resources/partials/
## copy icon
COPY ui/font_iconfont /opt/jboss/keycloak/themes/keycloak/common/resources/lib/font_iconfont
## copy theme.properties
COPY ui/theme.properties /opt/jboss/keycloak/themes/keycloak/login/
## copy jar
COPY target/keycloak-justauth-${keycloak_version}-jar-with-dependencies.jar /opt/jboss/keycloak/providers/keycloak-justauth.jar
