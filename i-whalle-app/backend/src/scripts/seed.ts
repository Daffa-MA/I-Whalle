#!/usr/bin/env node

/**
 * Seed script for I-Whalle database
 * Creates initial data for development
 */

import { PrismaClient } from '@prisma/client'
import bcrypt from 'bcryptjs'

const prisma = new PrismaClient()

async function main() {
  console.log('🌱 Seeding database...')

  // Create admin user
  const adminPassword = await bcrypt.hash('Admin123!@#', 10)
  const admin = await prisma.user.create({
    data: {
      email: 'admin@i-whalle.com',
      password: adminPassword,
      firstName: 'Admin',
      lastName: 'User',
      isAdmin: true,
      role: 'admin',
      kycStatus: 'verified',
    },
  })

  console.log('✅ Admin user created:', admin.email)

  // Create test user
  const testPassword = await bcrypt.hash('Test123!@#', 10)
  const testUser = await prisma.user.create({
    data: {
      email: 'test@i-whalle.com',
      password: testPassword,
      firstName: 'Test',
      lastName: 'User',
      role: 'user',
    },
  })

  console.log('✅ Test user created:', testUser.email)

  // Create admin settings
  const settings = await prisma.settings.create({
    data: {
      appName: 'I-Whalle',
      appUrl: 'http://localhost:3000',
      appVersion: '1.0.0',
      emailFrom: 'noreply@i-whalle.com',
      emailReplyTo: 'support@i-whalle.com',
    },
  })

  console.log('✅ Settings created')

  console.log('\n🎉 Database seeded successfully!')
  console.log('\n📝 Test Credentials:')
  console.log('Admin Email:', admin.email)
  console.log('Admin Password: Admin123!@#')
  console.log('Test Email:', testUser.email)
  console.log('Test Password: Test123!@#')
}

main()
  .catch((e) => {
    console.error('❌ Error seeding database:', e)
    process.exit(1)
  })
  .finally(async () => {
    await prisma.$disconnect()
  })
