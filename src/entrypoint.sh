#!/usr/bin/env bash
ln -s /X.RopamNeo/config/appsettings.json /X.RopamNeo/X.RopamNeo.Service/appsettings.json && \
ln -s /X.RopamNeo/config/X.RopamNeo.Service/NLog.config /X.RopamNeo/X.RopamNeo.Service/NLog.config && \
dotnet run --project X.RopamNeo.Service