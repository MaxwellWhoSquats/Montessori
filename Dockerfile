# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy csproj and restore dependencies
COPY Montessori.Api/*.csproj ./
RUN dotnet restore Montessori.Api.csproj

# Copy the rest of the code and build
COPY Montessori.Api/ ./
RUN dotnet publish Montessori.Api.csproj -c Release -o out

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./
COPY Montessori.Api/montessori.db ./

# Expose the port (Render expects 10000 by default)
EXPOSE 10000

# Set the port environment variable
ENV ASPNETCORE_URLS=http://+:10000

# Start the application
ENTRYPOINT ["dotnet", "Montessori.Api.dll"]