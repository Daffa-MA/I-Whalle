# I-Whalle Admin Dashboard 🐋

Professional, production-ready admin dashboard for the I-Whalle platform built with modern technologies.

## 🎯 Project Overview

**I-Whalle** is a comprehensive admin dashboard application designed for managing users, transactions, KYC verification, and platform analytics. Built with modern web technologies for optimal performance and maintainability.

### Tech Stack

**Backend:**
- Node.js + Express.js with TypeScript
- PostgreSQL with Prisma ORM
- Firebase Authentication & Cloud Services
- RESTful API with JWT tokens

**Frontend:**
- React 18 with TypeScript
- Vite for fast development and optimized builds
- Tailwind CSS for styling
- React Router for navigation
- React Query for state management
- Firebase SDK for real-time updates

**DevOps:**
- Docker & Docker Compose
- Firebase Hosting for production
- GitHub Actions for CI/CD (optional)

---

## 📁 Project Structure

```
i-whalle-app/
├── backend/                    # Express.js API server
│   ├── src/
│   │   ├── controllers/       # Route handlers
│   │   ├── models/            # Database models
│   │   ├── routes/            # API routes
│   │   ├── middleware/        # Custom middleware
│   │   ├── utils/             # Utility functions
│   │   └── server.ts          # Main server file
│   ├── prisma/
│   │   └── schema.prisma      # Database schema
│   ├── package.json
│   ├── tsconfig.json
│   ├── Dockerfile
│   └── .env.example
│
├── frontend/                   # React + Vite frontend
│   ├── src/
│   │   ├── components/        # Reusable React components
│   │   ├── pages/             # Page components
│   │   ├── hooks/             # Custom React hooks
│   │   ├── utils/             # Utility functions
│   │   ├── lib/               # Library configurations
│   │   ├── App.tsx            # Root component
│   │   └── main.tsx           # Entry point
│   ├── public/                # Static assets
│   ├── index.html
│   ├── package.json
│   ├── tsconfig.json
│   ├── vite.config.ts
│   ├── tailwind.config.js
│   ├── Dockerfile
│   └── .env.example
│
├── docker-compose.yml         # Docker services definition
├── .gitignore
└── README.md                  # This file
```

---

## ⚙️ Prerequisites

- **Node.js** >= 18.0.0
- **npm** >= 9.0.0
- **Docker** & **Docker Compose** (for containerized development)
- **PostgreSQL** >= 14 (if running locally without Docker)
- **Firebase Project** (for authentication and hosting)
- **Git**

---

## 🚀 Quick Start

### Option 1: Development with Docker (Recommended)

1. **Clone and Setup:**
   ```bash
   cd i-whalle-app
   cp backend/.env.example backend/.env
   cp frontend/.env.example frontend/.env
   ```

2. **Configure Environment Variables:**
   - Edit `backend/.env` with your Firebase and database credentials
   - Edit `frontend/.env` with your Firebase config

3. **Start Services:**
   ```bash
   docker-compose up -d
   ```

4. **Access Application:**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - Database: localhost:5432

5. **Initialize Database:**
   ```bash
   docker-compose exec backend npm run db:migrate
   ```

### Option 2: Local Development

#### Backend Setup

```bash
cd backend
npm install
cp .env.example .env

# Configure your .env file
# DATABASE_URL=postgresql://user:password@localhost:5432/i_whalle_db

# Run migrations
npm run db:migrate

# Start development server
npm run dev
```

Backend runs at: http://localhost:5000

#### Frontend Setup

```bash
cd frontend
npm install
cp .env.example .env

# Configure your .env file
# VITE_API_URL=http://localhost:5000/api

# Start development server
npm run dev
```

Frontend runs at: http://localhost:3000

---

## 📦 Available Scripts

### Backend

```bash
npm run dev          # Start development server with hot reload
npm run build        # Build TypeScript to JavaScript
npm start            # Run production build
npm run lint         # Check code for errors
npm run lint:fix     # Fix linting issues
npm run format       # Format code with Prettier
npm run db:migrate   # Run Prisma migrations
npm run db:push      # Push schema to database
npm run db:studio    # Open Prisma Studio GUI
npm run seed         # Seed database with sample data
```

### Frontend

```bash
npm run dev          # Start development server with Vite
npm run build        # Build for production
npm run preview      # Preview production build
npm run lint         # Check code quality
npm run lint:fix     # Fix linting issues
npm run format       # Format code with Prettier
npm run type-check   # Check TypeScript types
```

---

## 🔐 Environment Variables

### Backend (.env)

```env
NODE_ENV=development
PORT=5000
DATABASE_URL=postgresql://user:password@localhost:5432/i_whalle_db
FIREBASE_PROJECT_ID=your-project-id
JWT_SECRET=your-super-secret-key
FRONTEND_URL=http://localhost:3000
```

### Frontend (.env)

```env
VITE_API_URL=http://localhost:5000/api
VITE_FIREBASE_API_KEY=your-api-key
VITE_FIREBASE_PROJECT_ID=your-project-id
VITE_FIREBASE_AUTH_DOMAIN=your-project.firebaseapp.com
```

---

## 🗄️ Database Schema

The project uses Prisma ORM with PostgreSQL. Key models:

- **User**: User accounts with authentication
- **Profile**: User profile information
- **KYC**: Know Your Customer verification
- **Transaction**: Financial transactions
- **ActivityLog**: User activity tracking
- **Settings**: Platform configuration

See [backend/prisma/schema.prisma](backend/prisma/schema.prisma) for detailed schema.

---

## 🔄 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `POST /api/auth/logout` - Logout user
- `POST /api/auth/refresh` - Refresh JWT token

### Dashboard
- `GET /api/dashboard` - Get dashboard analytics
- `GET /api/dashboard/stats` - Get platform statistics

### Users
- `GET /api/users` - List all users
- `GET /api/users/:id` - Get user details
- `PUT /api/users/:id` - Update user
- `DELETE /api/users/:id` - Delete user

### Transactions
- `GET /api/transactions` - List transactions
- `GET /api/transactions/:id` - Get transaction details
- `POST /api/transactions` - Create transaction

### KYC
- `POST /api/kyc/submit` - Submit KYC verification
- `GET /api/kyc/:id` - Get KYC status

---

## 📱 Features

### User Management
- ✅ User registration and authentication
- ✅ Role-based access control
- ✅ User profile management
- ✅ Activity logging

### KYC/Verification
- ✅ Document upload and verification
- ✅ Verification status tracking
- ✅ Automated compliance checks

### Dashboard
- ✅ Real-time analytics
- ✅ User statistics
- ✅ Transaction monitoring
- ✅ Revenue tracking

### Admin Features
- ✅ User management
- ✅ Transaction monitoring
- ✅ Settings configuration
- ✅ Activity logs

---

## 🔒 Security Features

- ✅ JWT token authentication
- ✅ Role-based access control (RBAC)
- ✅ Password bcrypt hashing
- ✅ CORS protection
- ✅ Rate limiting
- ✅ Helmet.js security headers
- ✅ Firebase security rules
- ✅ Environment variable protection

---

## 📦 Deployment

### Firebase Hosting

1. **Install Firebase CLI:**
   ```bash
   npm install -g firebase-tools
   ```

2. **Build Frontend:**
   ```bash
   cd frontend
   npm run build
   ```

3. **Deploy:**
   ```bash
   firebase deploy
   ```

### Docker Deployment

```bash
# Build images
docker build -t i-whalle-backend ./backend
docker build -t i-whalle-frontend ./frontend

# Push to registry
docker push your-registry/i-whalle-backend
docker push your-registry/i-whalle-frontend

# Deploy on your server
docker pull your-registry/i-whalle-backend
docker pull your-registry/i-whalle-frontend
docker-compose up -d
```

---

## 🐛 Troubleshooting

### Port Already in Use
```bash
# Find and kill process on port
lsof -i :5000  # Backend
lsof -i :3000  # Frontend
kill -9 <PID>
```

### Database Connection Error
```bash
# Check PostgreSQL is running
docker-compose ps

# Check database credentials in .env
psql -U postgres -h localhost -d i_whalle_db
```

### Module Not Found
```bash
# Reinstall dependencies
rm -rf node_modules package-lock.json
npm install
```

---

## 👥 Team & Support

**Developed by:** I-Whalle Team  
**License:** MIT  
**Contact:** support@i-whalle.com

---

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## 🙏 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📚 Additional Resources

- [Express.js Documentation](https://expressjs.com/)
- [React Documentation](https://react.dev/)
- [Prisma Documentation](https://www.prisma.io/docs/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Firebase Documentation](https://firebase.google.com/docs)
- [Vite Documentation](https://vitejs.dev/)

---

**Last Updated:** April 15, 2026  
**Version:** 1.0.0
