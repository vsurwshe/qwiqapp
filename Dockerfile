FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY PlaySlipQwiqApp/*.csproj ./PlaySlipQwiqApp/
RUN dotnet restore

# copy everything else and build app
COPY PlaySlipQwiqApp/. ./PlaySlipQwiqApp/
WORKDIR /app/PlaySlipQwiqApp
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
WORKDIR /app
COPY --from=build /app/PlaySlipQwiqApp/out ./
ENTRYPOINT ["dotnet", "PlaySlipQwiqApp.dll"]