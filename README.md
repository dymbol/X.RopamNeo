# Preparing
This assumes appsettings.json is kept in /etc/X.RopamNeo/ directory:
```
XROPAMNEO_CONFIG_DIR=/etc/X.RopamNeo/  # configuration dir with appsetings.json
export XROPAMNEO_CONFIG_DIR
mkdir -p $XROPAMNEO_CONFIG_DIR
cp -r config_example/*  $XROPAMNEO_CONFIG_DIR/
```
make changes to files in configuartion dir
# Budowanie
`./build.sh`

# Uruchamianie
`docker run -v /etc/X.RopamNeo/:/X.RopamNeo/config/ xropamneo`
