# Use the official .NET SDK image to build the app
   FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
   WORKDIR /app

   # Copy csproj and restore dependencies
   COPY Montessori.Api/*.csproj ./
   RUN dotnet restore

   # Copy the rest of the code and build
   COPY Montessori.Api/ ./
   RUN dotnet publish -c Release -o out

   # Use the official .NET runtime image to run the app
   FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime
   WORKDIR /app
   COPY --from=build /app/out ./
   COPY Montessori.Api/montessori.db ./

   # Expose the port (Render expects 10000 by default)
   EXPOSE 10000

   # Set the port environment variable
   ENV ASPNETCORE_URLS=http://+:10000

   # Start the application
   ENTRYPOINT ["dotnet", "Montessori.Api.dll"]