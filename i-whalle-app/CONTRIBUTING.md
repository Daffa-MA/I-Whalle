# Contributing to I-Whalle Admin Dashboard

Thank you for your interest in contributing! Here's how you can help:

## 🎯 Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Follow project standards

## 🚀 Getting Started

1. **Fork the repository**
2. **Create feature branch**: `git checkout -b feature/amazing-feature`
3. **Make changes** and test locally
4. **Commit with clear messages**: `git commit -m 'Add amazing feature'`
5. **Push to branch**: `git push origin feature/amazing-feature`
6. **Open Pull Request** with description

## 📝 Commit Guidelines

```
type(scope): subject

- type: feat, fix, docs, style, refactor, perf, test, chore
- scope: backend, frontend, database, etc.
- subject: clear, descriptive, lowercase

Example:
feat(auth): add JWT token refresh endpoint

Fixes: #123
```

## ✅ Before Submitting PR

- [ ] Code follows project style
- [ ] All tests pass: `npm test`
- [ ] Linting passes: `npm run lint`
- [ ] TypeScript types check: `npm run type-check`
- [ ] Code formatted: `npm run format`
- [ ] Added/updated documentation
- [ ] No console warnings/errors

## 📚 Code Standards

### Backend (Node.js + TypeScript)

```typescript
// Use meaningful names
// Add JSDoc comments for public functions
/**
 * Get user by ID
 * @param id User ID
 * @returns User object
 */
async function getUser(id: string): Promise<User> {
  // implementation
}

// Type everything
const users: User[] = []

// Use async/await
const data = await fetchData()
```

### Frontend (React + TypeScript)

```typescript
// Functional components with hooks
interface UserCardProps {
  user: User
  onDelete?: (id: string) => void
}

export function UserCard({ user, onDelete }: UserCardProps) {
  return <div>{user.name}</div>
}

// Use components from @/components
// Use custom hooks from @/hooks
// Follow React best practices
```

## 🐛 Reporting Bugs

1. Check if issue already exists
2. Provide detailed description
3. Include steps to reproduce
4. Add screenshots if applicable
5. Mention your environment (OS, Node version, etc.)

## 💡 Suggesting Features

1. Check if feature already suggested
2. Describe the use case
3. Explain expected behavior
4. Add any relevant examples

## 📦 Project Structure

```
i-whalle-app/
├── backend/          # API server
├── frontend/        # Web dashboard
├── docs/            # Documentation
└── .github/         # GitHub configs
```

## 🔧 Development Workflow

1. **Backend changes**: Test with `npm run dev` and verify API endpoints
2. **Frontend changes**: Test with `npm run dev` and verify UI
3. **Database changes**: Update schema and run migrations

## 📚 Resources

- [Backend Documentation](backend/SETUP.md)
- [Frontend Documentation](frontend/SETUP.md)
- [Main README](README.md)

## ❓ Questions?

- Check existing issues
- Review documentation
- Ask in pull request discussion

---

Thank you for contributing to I-Whalle! 🎉
