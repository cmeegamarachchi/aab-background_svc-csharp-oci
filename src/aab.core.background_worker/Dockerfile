FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY *.csproj aab.core.background_worker/
RUN dotnet restore aab.core.background_worker/aab.core.background_worker.csproj

COPY /. aab.core.background_worker/
WORKDIR /src/aab.core.background_worker
RUN dotnet publish -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "aab.core.background_worker.dll"]