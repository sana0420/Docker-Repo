# Stage 1: Build (dotnet/sdk)
FROM mcr.microsoft.com/dotnet/sdk:8.0 
WORKDIR /app

# Copy project directory (development)
COPY . .
# Expose port (adjust if needed)
EXPOSE 5001

# Hot reload: Use dotnet watch run
ENTRYPOINT ["dotnet", "watch", "run","--urls", "http://0.0.0.0:5001"]

# Optional: Volume mount for development
