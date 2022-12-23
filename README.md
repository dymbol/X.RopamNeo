# Przygotowanie
`
XROPAMNEO_CONFIG_DIR=$HOME/X.RopamNeo/
mkdir -p $XROPAMNEO_CONFIG_DIR
cp -r config_example/*  $XROPAMNEO_CONFIG_DIR/
`
make changes to files in configuartion dir
# Budowanie
`./build.sh`

# Uruchamianie
docker run -v /etc/X.RopamNeo/:/X.RopamNeo/config/ xropamneo