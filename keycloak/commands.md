
Create user:

```
$ docker exec -ti keyclaok bash

# cd keycloak/bin
# ./add-user-keycloak.sh --help
# ./add-user-keycloak.sh -u admin -p admin -r master
```

Restart server

```
# cd keycloak/bin
# ./jboss-cli.sh
> connect
> reload
```

```
[standalone@localhost:9990 /] help --commands
Commands available in the current context:
attachment                              deployment-info                         run-batch
batch                                   deployment-overlay                      security disable-http-auth-http-server
cd                                      echo                                    security disable-http-auth-management
clear                                   echo-dmr                                security disable-sasl-management
command                                 for                                     security disable-ssl-http-server
command-timeout                         grep                                    security disable-ssl-management
connect                                 help                                    security enable-http-auth-http-server
connection-info                         history                                 security enable-http-auth-management
data-source                             if                                      security enable-sasl-management
deploy                                  jdbc-driver-info                        security enable-ssl-http-server
deployment deploy-cli-archive           ls                                      security enable-ssl-management
deployment deploy-file                  module                                  security reorder-sasl-management
deployment deploy-url                   patch apply                             set
deployment disable                      patch history                           shutdown
deployment disable-all                  patch info                              try
deployment enable                       patch inspect                           undeploy
deployment enable-all                   pwd                                     unset
deployment info                         quit                                    version
deployment list                         read-attribute                          xa-data-source
deployment undeploy                     read-operation
deployment undeploy-cli-archive         reload
To read a description of a specific command execute 'help <command name>'.
[standalone@localhost:9990 /] reload
```