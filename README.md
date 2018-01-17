# jenkins-android-build
Dockerfile recipe to create a jenkins server capable of building android kernel. 

## How to build it ?
Simply run 
```
docker build https://github.com/bitrvmpd/jenkins-android-build.git -t [reponame]:[tag]
```

## Now supports [docker-sync](https://github.com/EugenMayer/docker-sync)
### Requisites
- docker-sync installed ([guide](https://github.com/EugenMayer/docker-sync-boilerplate))
- Path `~/docker-volumes/jenkins`
- clone this repo

Inside cloned repo dir run
```
docker-sync-stack start
```

Jenkins will be at `localhost:5000`
docker sync will look for a directory in `~/docker-volumes/jenkins`

#### Not working in OSX?
Solution [here](https://github.com/jenkinsci/docker/issues/177#issuecomment-268137665)

