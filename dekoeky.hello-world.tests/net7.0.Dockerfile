#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["dekoeky.hello-world.tests/dekoeky.hello-world.tests.csproj", "dekoeky.hello-world.tests/"]
COPY ["dekoeky.hello-world/dekoeky.hello-world.csproj", "dekoeky.hello-world/"]
RUN dotnet restore "./dekoeky.hello-world.tests/./dekoeky.hello-world.tests.csproj"
COPY . .
WORKDIR "/src/dekoeky.hello-world.tests"
RUN dotnet build "./dekoeky.hello-world.tests.csproj" -c $BUILD_CONFIGURATION -f net7.0 -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./dekoeky.hello-world.tests.csproj" -c $BUILD_CONFIGURATION -f net7.0 -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "test", "dekoeky.hello-world.tests.dll"]