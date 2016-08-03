FROM microsoft/dotnet:1.0.0-preview2-sdk

ENV ASPNETCORE_URLS http://0.0.0.0:5000
ENV ASPNETCORE_ENVIRONMENT Development
ENV DOTNET_USE_POLLING_FILE_WATCHER true

EXPOSE 5000/tcp

WORKDIR /app
ENTRYPOINT dotnet restore; dotnet watch run
