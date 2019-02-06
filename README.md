# cypress-demo


> Cypress + Docker = ❤️


## This project demonstrates some basic Gherkin + Cypress + docker examples for OOS application


## Setup
```
npm ci
```


## Docker build
```
./docker-build.sh
```


## Execute
### local
```
./cirun.sh
```

### in docker
```
./docker-run.sh
```


## junit xml results
See test-results folder


## Environment
By default, OOS application is expected to be accessible at http://localhost:5000
This URL can be overriden by environment variable "URL"
