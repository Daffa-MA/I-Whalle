# I-Whalle Backend Setup Guide

## Prerequisites

- Node.js >= 18.0.0
- npm >= 9.0.0
- PostgreSQL >= 14 (or use Docker)
- Firebase project

## Installation

### Step 1: Install Dependencies

```bash
cd backend
npm install
```

### Step 2: Configure Environment

```bash
cp .env.example .env
```

Edit `.env` with:
- Database credentials
- Firebase configuration
- JWT secret

### Step 3: Setup Database

```bash
# Create database
createdb i_whalle_db

# Run migrations
npm run db:migrate

# (Optional) Seed with test data
npm run seed
```

### Step 4: Start Server

```bash
npm run dev
```

Server runs at `http://localhost:5000`

## API Documentation

### Authentication Endpoints

**Register User**
```
POST /api/auth/register
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "securePassword123",
  "firstName": "John",
  "lastName": "Doe"
}
```

**Login**
```
POST /api/auth/login
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "securePassword123"
}
```

## Database Schema

See `prisma/schema.prisma` for complete database schema.

Key tables:
- users
- profiles
- kyc
- transactions
- activity_logs
- settings

## Firebase Setup

1. Create Firebase project at https://console.firebase.google.com
2. Enable Authentication (Email/Password and Google Sign-In)
3. Create Firestore database
4. Generate service account key:
   - Project Settings → Service Accounts
   - Generate new private key
   - Add credentials to `.env`

## Troubleshooting

**Port 5000 already in use:**
```bash
# Find process on port 5000
lsof -i :5000
kill -9 <PID>
```

**Database connection error:**
```bash
# Check PostgreSQL is running
psql -U postgres

# Check connection string in .env
# Should be: postgresql://user:password@localhost:5432/i_whalle_db
```

**Migrations failed:**
```bash
# Reset database (caution: deletes all data)
npm run db:push -- --force-reset
```

## Development Tips

- Use `npm run dev` for development with hot reload
- Use `npm run lint` to check code quality
- Use `npm run format` to format code automatically
- Use `npm run db:studio` to open Prisma database UI

## Production Build

```bash
npm run build
npm start
```
