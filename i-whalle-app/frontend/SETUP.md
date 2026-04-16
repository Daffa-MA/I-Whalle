# I-Whalle Frontend Setup Guide

## Prerequisites

- Node.js >= 18.0.0
- npm >= 9.0.0
- React knowledge
- Firebase account

## Installation

### Step 1: Install Dependencies

```bash
cd frontend
npm install
```

### Step 2: Configure Environment

```bash
cp .env.example .env
```

Edit `.env` with:
- `VITE_API_URL`: Backend API URL (http://localhost:5000/api)
- Firebase configuration from Firebase Console

### Step 3: Start Development Server

```bash
npm run dev
```

Frontend runs at `http://localhost:3000`

## Project Structure

```
src/
├── components/     # Reusable React components
├── pages/         # Page components (routes)
├── hooks/         # Custom React hooks
├── lib/           # Library configurations
├── utils/         # Utility functions
├── App.tsx        # Root component
└── main.tsx       # Application entry point
```

## Key Features

### Pages
- **LoginPage**: User authentication
- **DashboardPage**: Main admin dashboard with analytics
- **UsersPage**: User management
- **TransactionsPage**: Transaction history and monitoring
- **SettingsPage**: Application settings

### Hooks
- **useAuth**: Authentication state management
- **useFirebase**: Firebase integration

## Available Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
npm run lint         # Check code quality
npm run lint:fix     # Fix linting issues
npm run format       # Format code with Prettier
npm run type-check   # Check TypeScript types
```

## Firebase Integration

### Setup Firebase Project

1. Go to https://console.firebase.google.com
2. Create a new project
3. Enable Authentication methods:
   - Email/Password
   - Google Sign-In
4. Create Firestore database
5. Copy config from Project Settings

### Configure Frontend

Add Firebase credentials to `.env`:

```env
VITE_FIREBASE_API_KEY=your-key
VITE_FIREBASE_AUTH_DOMAIN=your-domain
VITE_FIREBASE_PROJECT_ID=your-project-id
VITE_FIREBASE_STORAGE_BUCKET=your-bucket
VITE_FIREBASE_MESSAGING_SENDER_ID=your-sender-id
VITE_FIREBASE_APP_ID=your-app-id
VITE_FIREBASE_MEASUREMENT_ID=your-measurement-id
```

## Component Development

### Creating a New Page

```typescript
// src/pages/NewPage.tsx
export default function NewPage() {
  return (
    <div className="min-h-screen bg-gray-50 p-8">
      <div className="max-w-7xl mx-auto">
        <h1 className="text-4xl font-bold text-gray-900">Page Title</h1>
        {/* Content */}
      </div>
    </div>
  )
}
```

### Using Custom Hooks

```typescript
import useAuth from '@hooks/useAuth'

function MyComponent() {
  const { user, loading } = useAuth()
  
  if (loading) return <div>Loading...</div>
  if (!user) return <div>Not authenticated</div>
  
  return <div>Welcome {user.email}</div>
}
```

## Styling with Tailwind CSS

The project uses Tailwind CSS for styling. Common utility classes:

```jsx
<div className="flex items-center justify-center min-h-screen bg-gray-50">
  <div className="bg-white rounded-lg shadow-lg p-8 w-full max-w-md">
    <h1 className="text-4xl font-bold text-gray-900 mb-4">Title</h1>
    <p className="text-gray-600">Description</p>
  </div>
</div>
```

See [Tailwind CSS Docs](https://tailwindcss.com/docs) for more utilities.

## API Requests with Axios

```typescript
import axios from 'axios'

const api = axios.create({
  baseURL: import.meta.env.VITE_API_URL,
})

// GET request
const response = await api.get('/users')

// POST request
await api.post('/users', { name: 'John' })

// With auth token
api.defaults.headers.common['Authorization'] = `Bearer ${token}`
```

## Debugging

### React DevTools
- Install: Chrome extension "React Developer Tools"
- View component hierarchy and props

### Vite HMR (Hot Module Replacement)
- Changes auto-refresh without losing state
- Check browser console for compilation errors

### TypeScript Errors
```bash
npm run type-check
```

## Build for Production

```bash
npm run build
```

Outputs to `dist/` directory.

### Preview Production Build

```bash
npm run preview
```

## Deployment

### Firebase Hosting

```bash
npm install -g firebase-tools
firebase login
firebase init
npm run build
firebase deploy
```

### Other Platforms

The `dist/` folder can be deployed to:
- Vercel
- Netlify
- GitHub Pages
- AWS S3
- Any static hosting service

## Troubleshooting

**Port 3000 already in use:**
```bash
# Kill process on port 3000
lsof -i :3000
kill -9 <PID>
```

**Module not found:**
```bash
rm -rf node_modules
npm install
```

**Empty page on load:**
- Check browser console for errors
- Verify `.env` file is configured
- Check that backend API is running

## Performance Tips

1. **Code Splitting**: Use React.lazy() for route-based splitting
2. **Image Optimization**: Use responsive images
3. **Caching**: React Query handles data caching
4. **Tree Shaking**: Only import what you need

## Resources

- [React Documentation](https://react.dev/)
- [Vite Documentation](https://vitejs.dev/)
- [Tailwind CSS Documentation](https://tailwindcss.com/)
- [Firebase Documentation](https://firebase.google.com/docs)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)
