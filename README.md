Docker-Lapis
============
A docker container for lapis server by [Alejandro Baez][1].
--------------------------------------

### DESCRIPTION
A simple docker container for the lapis server. So what's the purpose of this
lovely docker container? If you don't want to do a
[lapis][2] install on your machine, or if you want to get
an install up and running without much hassle, or if you just want to use my
**cough** brilliant **cough** [lapis project builder][3]
 , then this docker container is for you!

### INSTALLATION

#### 1. Auto setup
If you want to use docker image database for the build, then simply run
`docker pull`

```
    docker pull abaez/lapis
```
You're done! Go to [Usage](#Usage) for how to use.

#### Manual Setup
If you want to build the container for yourself then follow the steps:

* Clone the repository.

```
    git clone bb:abaez/docker-lapis docker-lapis
```

##### 2. Building docker container
If you want to just build the container then follow the following steps, else
follow *using docker-compose directly* for steps on how to use the build directly from
source.

* enter the docker lapis location and run `build.sh`.

```
    cd docker-lapis
    ./build.sh
```
You're done! Go to [Usage](#Usage) for how to use.

##### 3. Using docker-compose directly
*  Edit the `docker-compose.yml` line 6 to your webapp source location.
    * example: `- /data/web/best_website_ever:/app`
*  Finally run `docker-compose up` and you good to go with your build.


```
    cd docker-lapis
    docker-compose up
```
You're done! Go to [Usage](#Usage) for how to use.

### USAGE
A quick note before continuing. You can pick the lapis web environment
of your project. By default, the environment is set to `development`
on `CMD`. Meaning, if you run `docker run abaez/lapis` you will be running
with the full execution similar to:

```
docker run --expose "80" --expose "8080" abaez/docker-lapis server development
```

#### Followed either `1.` or `2.`
If using the `1.` or `2.` installation setup you can use one of the two setups:

*  running directly from docker.

```
    docker run \
        -p 80:80 \
        -v <your webapp src>:/app \
        abaez/docker-lapis \
        server production
```
*  using my [lapis project builder][3] for running.

#### Followed `3.`
If you are using `3.` setup, then you shouldn't be needing my help here.
However, I am kind, so all you have to do is make sure your lapis src is in
the location you put on the `docker-compose.yml`. Finally, run
`docker-compose up` and you are done.

### LICENSE
The MIT License (MIT)

Copyright (c) 2016 [Alejandro Baez][1]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

[1]: https://keybaez.io/baez
[2]: http://leafo.net/lapis/
[3]: https://bitbucket.org/a_baez/lapis-project-builder
