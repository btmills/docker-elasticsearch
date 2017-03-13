BUG when Run: /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack


```

Step 5 : RUN /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack

 ---> Running in 91548fc14fee

-> Removing x-pack...

[91mException in thread "main" java.nio.file.AtomicMoveNotSupportedException: /usr/share/elasticsearch/plugins/x-pack -> /usr/share/elasticsearch/plugins/.removing-x-pack: Cross-device link
	at sun.nio.fs.UnixCopyFile.move(UnixCopyFile.java:394)
	at sun.nio.fs.UnixFileSystemProvider.move(UnixFileSystemProvider.java:262)
	at java.nio.file.Files.move(Files.java:1395)
	at org.elasticsearch.plugins.RemovePluginCommand.execute(RemovePluginCommand.java:88)
	at org.elasticsearch.plugins.RemovePluginCommand.execute(RemovePluginCommand.java:59)
	at org.elasticsearch.cli.SettingCommand.execute(SettingCommand.java:54)
	at org.elasticsearch.cli.Command.mainWithoutErrorHandling(Command.java:122)
	at org.elasticsearch.cli.MultiCommand.execute(MultiCommand.java:69)
	at org.elasticsearch.cli.Command.mainWithoutErrorHandling(Command.java:122)
	at org.elasticsearch.cli.Command.main(Command.java:88)
	at org.elasticsearch.plugins.PluginCli.main(PluginCli.java:47)
[0m
Removing intermediate container 91548fc14fee
```


Related Issues:
- https://github.com/docker-library/elasticsearch/issues/156
- https://github.com/docker-library/elasticsearch/issues/141


# Example of use the elasticsearch with Docker

## Elasticsearch Server Docker Image - Extends Official ELK
- Repository: https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
- Repository Deprecated: https://hub.docker.com/r/freitasul/elasticsearch



#### Branches:
| Branch           | From                                                     | Usage        |
| ---------------- | -------------------------------------------------------- | ------------ |
| master (latest)  | docker.elastic.co/elasticsearch/elasticsearch:5.2.2      | Development  |

# Dockerfile extends From:
- https://github.com/elastic/elasticsearch-docker
- https://github.com/docker-library/elasticsearch
- https://hub.docker.com/_/elasticsearch
