import type { Locale } from './common';

export const getLocaleFromPath = (
  pathname: string
): Locale => {
  if (
    pathname === '/pl' ||
    pathname === '/pl/' ||
    pathname.startsWith('/pl/')
  ) {
    return 'pl';
  }

  return 'en';
};

export const stripLocaleFromPath = (
  pathname: string
): string => {
  if (
    pathname === '/pl' ||
    pathname === '/pl/'
  ) {
    return '/';
  }

  if (pathname.startsWith('/pl/')) {
    return pathname.slice(3) || '/';
  }

  return pathname || '/';
};

export const getLocalizedPath = (
  pathname: string,
  locale: Locale
): string => {
  const basePath =
    stripLocaleFromPath(pathname);

  if (locale === 'en') {
    return basePath;
  }

  return basePath === '/'
    ? '/pl/'
    : `/pl${basePath}`;
};