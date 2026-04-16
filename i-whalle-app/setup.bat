@echo off
REM I-Whalle Admin Dashboard Setup Script
echo 🐋 I-Whalle Admin Dashboard Setup
echo ==================================
echo.

REM Check Node.js
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Node.js is not installed. Please install Node.js ^>= 18.0.0
    pause
    exit /b 1
)
echo ✅ Node.js installed
node --version

REM Check npm
where npm >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ npm is not installed
    pause
    exit /b 1
)
echo ✅ npm installed
npm --version

REM Create environment files
echo.
echo 📝 Creating environment files...

if not exist "backend\.env" (
    copy backend\.env.example backend\.env
    echo ✅ Created backend\.env
) else (
    echo ⚠️  backend\.env already exists
)

if not exist "frontend\.env" (
    copy frontend\.env.example frontend\.env
    echo ✅ Created frontend\.env
) else (
    echo ⚠️  frontend\.env already exists
)

REM Install dependencies
echo.
echo 📦 Installing dependencies...

echo Installing backend dependencies...
cd backend
call npm install
cd ..

echo Installing frontend dependencies...
cd frontend
call npm install
cd ..

echo.
echo ✨ Setup Complete!
echo.
echo 📌 Next steps:
echo 1. Edit backend\.env with your Firebase credentials
echo 2. Edit frontend\.env with your Firebase config
echo 3. Run: npm run dev from both backend and frontend folders
echo    OR: docker-compose up
echo.
echo 🚀 Happy coding!
pause
