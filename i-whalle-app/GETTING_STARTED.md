# Getting Started with I-Whalle Admin Dashboard

Welcome to the I-Whalle Admin Dashboard! This guide will help you get started quickly.

## 📋 Prerequisites

Before you begin, make sure you have:

- **Node.js** >= 18.0.0 ([Download](https://nodejs.org/))
- **npm** >= 9.0.0 (comes with Node.js)
- **Docker & Docker Compose** (optional, for containerized development)
- **Git** ([Download](https://git-scm.com/downloads))
- **Firebase Account** ([Create account](https://firebase.google.com/))

## 🚀 Quick Start (5 minutes)

### Step 1: Extract Project

Extract the `i-whalle-app.zip` file:

```bash
unzip i-whalle-app.zip
cd i-whalle-app
```

### Step 2: Run Setup Script

**On Windows:**
```bash
setup.bat
```

**On macOS/Linux:**
```bash
chmod +x setup.sh
./setup.sh
```

This will:
- ✅ Check prerequisites
- ✅ Create environment files
- ✅ Install all dependencies

### Step 3: Configure Firebase

1. Open [Firebase Console](https://console.firebase.google.com/)
2. Create a new project or use existing
3. Enable Authentication (Email/Password + Google)
4. Create Firestore Database
5. Copy your credentials

**For Backend:**
- Project Settings → Service Accounts
- Generate new private key (JSON)
- Update `backend/.env`:

```env
FIREBASE_PROJECT_ID=your-project-id
FIREBASE_PRIVATE_KEY=your-private-key
FIREBASE_CLIENT_EMAIL=your-client-email
```

**For Frontend:**
- Project Settings → General
- Copy Web app configuration
- Update `frontend/.env`:

```env
VITE_FIREBASE_API_KEY=your-api-key
VITE_FIREBASE_AUTH_DOMAIN=your-auth-domain
VITE_FIREBASE_PROJECT_ID=your-project-id
VITE_FIREBASE_STORAGE_BUCKET=your-storage-bucket
VITE_FIREBASE_MESSAGING_SENDER_ID=your-sender-id
VITE_FIREBASE_APP_ID=your-app-id
```

### Step 4: Run Application

#### Option A: With Docker (Easiest)

```bash
docker-compose up
```

- Frontend: http://localhost:3000
- Backend API: http://localhost:5000
- Database: PostgreSQL on localhost:5432

#### Option B: Local Development

**Terminal 1 - Backend:**
```bash
cd backend
npm run dev
```

Backend runs at: http://localhost:5000

**Terminal 2 - Frontend:**
```bash
cd frontend
npm run dev
```

Frontend runs at: http://localhost:3000

## 📁 Project Structure

```
i-whalle-app/
├── backend/          # Express.js + TypeScript API
├── frontend/        # React + Vite dashboard
├── docker-compose.yml  # Docker configuration
└── README.md        # Full documentation
```

## 🔑 Key Commands

### Backend

```bash
cd backend

npm run dev          # Start development server
npm run build        # Build for production
npm run lint         # Check code quality
npm run db:migrate   # Run database migrations
npm run db:studio    # Open database GUI
```

### Frontend

```bash
cd frontend

npm run dev          # Start development server
npm run build        # Build for production
npm run lint         # Check code quality
npm run type-check   # Check TypeScript types
```

## 📚 Documentation

For detailed information, see:

- [Backend Setup](backend/SETUP.md)
- [Frontend Setup](frontend/SETUP.md)
- [Main README](README.md)

## 🆘 Troubleshooting

### "Port already in use"

```bash
# Windows
netstat -ano | findstr :5000
taskkill /PID <PID> /F

# Mac/Linux
lsof -i :5000
kill -9 <PID>
```

### "Cannot connect to database"

Make sure PostgreSQL is running:
```bash
# With Docker
docker-compose ps

# Local PostgreSQL
psql -U postgres
```

### "Module not found" error

```bash
# Clear and reinstall dependencies
rm -rf node_modules package-lock.json
npm install
```

### Firebase authentication not working

1. Check `.env` files are configured correctly
2. Verify Firebase project is active
3. Check browser console for detailed errors

## 💡 Tips

- **Development**: Use `npm run dev` with hot reload enabled
- **Code Quality**: Run `npm run lint` before committing
- **Database**: Use `npm run db:studio` to inspect database
- **API Tests**: Use tools like Postman or Insomnia

## 🎯 Next Steps

1. ✅ Get familiar with the codebase
2. ✅ Read the API documentation
3. ✅ Create your first component
4. ✅ Add a new route
5. ✅ Deploy to production

## 📞 Support

Need help? Check:
- Main [README.md](README.md)
- [Backend Documentation](backend/SETUP.md)
- [Frontend Documentation](frontend/SETUP.md)
- Firebase docs at https://firebase.google.com/docs

## 🚀 Deploy in 10 minutes

### Deploy Backend (Firebase Functions or Heroku)

```bash
cd backend
npm run build
# Deploy using your preferred platform
```

### Deploy Frontend (Firebase Hosting)

```bash
firebase login
firebase init hosting
cd frontend
npm run build
firebase deploy --only hosting
```

## 🎉 Congratulations!

You're now ready to build amazing admin features with I-Whalle! Happy coding!

---

**Version:** 1.0.0  
**Last Updated:** April 15, 2026
