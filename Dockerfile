FROM bitnami/dotnet-sdk
COPY . /X.RopamNeo
WORKDIR /X.RopamNeo
RUN dotnet build
CMD /X.RopamNeo/entrypoint.sh