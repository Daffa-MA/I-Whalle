import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.iwhalle.app',
  appName: 'i-whalle',
  webDir: 'dist',
  server: {
    androidScheme: 'https'
  }
};

export default config;
