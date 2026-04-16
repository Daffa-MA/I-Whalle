#!/bin/bash

echo "🐋 I-Whalle Admin Dashboard Setup"
echo "=================================="
echo ""

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check prerequisites
echo -e "${BLUE}📋 Checking prerequisites...${NC}"

if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js >= 18.0.0"
    exit 1
fi
echo "✅ Node.js $(node --version)"

if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed"
    exit 1
fi
echo "✅ npm $(npm --version)"

# Create environment files
echo -e "\n${BLUE}📝 Creating environment files...${NC}"

if [ ! -f "backend/.env" ]; then
    cp backend/.env.example backend/.env
    echo "✅ Created backend/.env"
else
    echo "⚠️  backend/.env already exists"
fi

if [ ! -f "frontend/.env" ]; then
    cp frontend/.env.example frontend/.env
    echo "✅ Created frontend/.env"
else
    echo "⚠️  frontend/.env already exists"
fi

# Install dependencies
echo -e "\n${BLUE}📦 Installing dependencies...${NC}"

echo "Installing backend dependencies..."
cd backend
npm install
cd ..

echo "Installing frontend dependencies..."
cd frontend
npm install
cd ..

echo -e "\n${GREEN}✨ Setup Complete!${NC}"
echo ""
echo "📌 Next steps:"
echo "1. Edit backend/.env with your Firebase credentials"
echo "2. Edit frontend/.env with your Firebase config"
echo "3. Run: npm run dev (from backend) and npm run dev (from frontend)"
echo "   OR: docker-compose up"
echo ""
echo "🚀 Happy coding!"
