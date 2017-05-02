# Docker Escape Registry

Please see http://escape.ankyra.io for full documentation.

## Usage

### Run with default configuration file

This will use the `default_config.json` which has been placed at `/etc/escape-registry/config.json` during build.

```
docker run -t eu.gcr.io/ankyra-releases/escape-registry:latest
```

The default configuration uses local file storage and a SQLite database.

### Run with custom configuration file

```
docker run -v myfile.json:/etc/escape-registry/config.json -t eu.gcr.io/ankyra-releases/escape-registry:latest
```

### Mount host directory as data volume

Store the sqlite database and the releases on a host directory (NB. this applies to the default configuration):

```
docker run -v /media/my_storage:/var/lib/escape-registry -t eu.gcr.io/ankyra-releases/escape-registry:latest
```

### Configure using environment variables

```
docker run -e PORT=1234 -t eu.gcr.io/ankyra-releases/escape-registry:latest
```

See the documentation for the Escape Registry for supported configuration settings.

## License

```
Copyright 2017 Ankyra

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
