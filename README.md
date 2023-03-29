# Preparing
```
XROPAMNEO_CONFIG_DIR=$HOME/X.RopamNeo/
mkdir -p $XROPAMNEO_CONFIG_DIR
cp -r config_example/*  $XROPAMNEO_CONFIG_DIR/
```
make changes to files in configuartion dir
# Building
`./build.sh`

# Running
docker run -v $HOME/X.RopamNeo/:/X.RopamNeo/config/ xropamneo

# Kubernetes
Kubernetes Deployment manifest is available in kubernetes/xropamneo-master.yml file

Example deployment process is available in Jenkinsfile
