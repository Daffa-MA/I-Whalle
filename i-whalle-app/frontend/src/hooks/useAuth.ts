import { useState, useEffect } from 'react'
import { auth, isFirebaseConfigured } from '@/lib/firebase'
import { onAuthStateChanged, User } from 'firebase/auth'

interface UseAuthReturn {
  user: User | null
  loading: boolean
  error: string | null
}

function useAuth(): UseAuthReturn {
  const [user, setUser] = useState<User | null>(null)
  const [loading, setLoading] = useState(isFirebaseConfigured)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (!isFirebaseConfigured || !auth) {
      setUser(null)
      setLoading(false)
      return
    }

    const unsubscribe = onAuthStateChanged(
      auth,
      (currentUser) => {
        setUser(currentUser)
        setLoading(false)
      },
      (err) => {
        setError(err.message)
        setLoading(false)
      }
    )

    return () => unsubscribe()
  }, [])

  return { user, loading, error }
}

export default useAuth
