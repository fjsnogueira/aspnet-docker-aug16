FROM microsoft/dotnet:1.0.0-preview2-sdk

ENV ASPNETCORE_URLS http://0.0.0.0:5000

EXPOSE 5000/tcp

COPY publish /app

WORKDIR /app
ENTRYPOINT dotnet app.dll
