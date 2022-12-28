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

# Lub bezpośrednio ściagnięcie obrazu container.io:
docker run -v /etc/X.RopamNeo/:/X.RopamNeo/config/ cloud.canister.io:5000/dymbol/xropamneo
