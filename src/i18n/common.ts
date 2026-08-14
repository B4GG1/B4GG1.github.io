export const locales = ['en', 'pl'] as const;

export type Locale = (typeof locales)[number];

export const defaultLocale: Locale = 'en';

export const commonTranslations = {
  en: {
    skipToContent: 'Skip to content',
    siteNameAriaLabel: 'Go to homepage',
    primaryNavigation: 'Primary navigation',
    openNavigation: 'Open navigation menu',
    closeNavigation: 'Close navigation menu',
    navigation: {
      experience: 'Experience',
      skills: 'Skills',
      projects: 'Projects',
      certifications: 'Certifications',
      contact: 'Contact',
    },
    languageSwitcher: 'Change language',
    english: 'EN',
    polish: 'PL',
    footerNote:
      'Technical portfolio built around quality, engineering and design.',
    footerContact: 'Contact',
  },

  pl: {
    skipToContent: 'Przejdź do treści',
    siteNameAriaLabel: 'Przejdź do strony głównej',
    primaryNavigation: 'Główna nawigacja',
    openNavigation: 'Otwórz menu nawigacji',
    closeNavigation: 'Zamknij menu nawigacji',
    navigation: {
      experience: 'Doświadczenie',
      skills: 'Umiejętności',
      projects: 'Projekty',
      certifications: 'Certyfikaty',
      contact: 'Kontakt',
    },
    languageSwitcher: 'Zmień język',
    english: 'EN',
    polish: 'PL',
    footerNote:
      'Portfolio techniczne skupione na jakości, inżynierii i projektowaniu.',
    footerContact: 'Kontakt',
  },
} as const;

export const getCommonTranslations = (
  locale: Locale
) => commonTranslations[locale];