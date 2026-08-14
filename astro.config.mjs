import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://b4gg1.github.io',
  i18n: {
    locales: ['en', 'pl'],
    defaultLocale: 'en',
    routing: {
      prefixDefaultLocale: false,
    },
  },
});