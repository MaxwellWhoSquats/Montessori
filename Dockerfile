# Build stage
FROM mcr.microsoft.com/dotnet/sdk:9.0-preview AS build
WORKDIR /app

# Install dotnet-ef tool
RUN dotnet tool install --global dotnet-ef --version 9.0.0-rc.2.24474.1
ENV PATH="${PATH}:/root/.dotnet/tools"

# Verify dotnet-ef installation
RUN dotnet ef --version

# Copy csproj and restore dependencies
COPY Montessori.Api/*.csproj ./
RUN dotnet restore

# Copy the rest of the code
COPY Montessori.Api/ ./

# Apply migrations during build
RUN dotnet ef database update --project Montessori.Api.csproj

# Build and publish
RUN dotnet publish -c Release -o out

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:9.0-preview AS runtime
WORKDIR /app
COPY --from=build /app/out ./
COPY --from=build /app/montessori.db ./

# Expose the port (Render expects 10000 by default)
EXPOSE 10000

# Set the port environment variable
ENV ASPNETCORE_URLS=http://+:10000

# Start the application
ENTRYPOINT ["dotnet", "Montessori.Api.dll"]