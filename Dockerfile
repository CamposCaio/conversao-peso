# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY ConversaoPeso.Web/*.csproj ./src/

RUN dotnet restore "src/ConversaoPeso.Web.csproj"

# copy everything else and build app
COPY ConversaoPeso.Web/. ./src/
WORKDIR /app/src
RUN dotnet publish -c release -o /app --no-restore

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=0 /app ./
ENTRYPOINT ["dotnet", "ConversaoPeso.Web.dll"]