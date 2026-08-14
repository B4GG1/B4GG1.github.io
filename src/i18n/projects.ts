import type { Locale } from './common';

const sharedProjects = [
  {
    id: 'qa-automation-framework',
    statusType: 'active',
    title:
      'Playwright Python QA Automation Framework',
    logo:
      '/assets/images/projects/Playwright Python QA Automation Framework Logo.png',
    logoScale: 1.14,
    logoOffsetX: '0%',
    logoOffsetY: '1.5%',
    technologies: [
      'Python 3.12',
      'pytest',
      'Playwright',
      'Page Object Model',
      'Ruff / Black / isort',
      'Git & GitHub',
      'GitHub Actions',
      'Html Reports',
      'WSL2 / Ubuntu',
    ],
    href:
      'https://github.com/B4GG1/playwright-python-qa-automation-framework',
  },
  {
    id: 'flask-test-management-api',
    statusType: 'planned',
    title:
      'Flask QA Test Management API',
    logo:
      '/assets/images/projects/Flask QA Test Management API Logo.png',
    logoScale: 1,
    logoOffsetX: '0%',
    logoOffsetY: '0%',
    technologies: [
      'Python',
      'Flask',
      'REST API',
      'SQL Database',
      'pytest',
      'Backend Testing',
    ],
    href: null,
  },
  {
    id: 'django-rpg-event-platform',
    statusType: 'planned',
    title:
      'Django RPG Event Platform',
    logo:
      '/assets/images/projects/Django RPG Event Platform Logo.png',
    logoScale: 1.03,
    logoOffsetX: '0%',
    logoOffsetY: '0.8%',
    technologies: [
      'Python',
      'Django',
      'PostgreSQL',
      'Backend Testing',
      'User Accounts',
      'Event Management',
    ],
    href: null,
  },
] as const;

const testedGames = [
  {
    title:
      'Marvel’s Guardians of the Galaxy',
    cover:
      '/assets/images/games/Guardians_of_the_galaxy.webp',
    href:
      'https://store.steampowered.com/app/1088850/Marvels_Guardians_of_the_Galaxy/',
  },
  {
    title: 'Outriders',
    cover:
      '/assets/images/games/Outriders.webp',
    href:
      'https://store.steampowered.com/app/680420/OUTRIDERS/',
  },
  {
    title: 'Marvel’s Avengers',
    cover:
      '/assets/images/games/Avengers.webp',
    href:
      'https://store.steampowered.com/app/997070/Marvels_Avengers__Edycja_Ostateczna/',
  },
  {
    title: 'Hunt Together',
    cover:
      '/assets/images/games/Hunt_Together.webp',
    href:
      'https://store.steampowered.com/app/1778030/Hunt_Together/?l=polish',
  },
  {
    title:
      'The Wizards: Dark Times',
    cover:
      '/assets/images/games/The Wizards.jpg',
    href:
      'https://store.steampowered.com/app/1103860/The_Wizards__Dark_Times_Brotherhood/',
  },
  {
    title:
      'Warhammer Age of Sigmar: Tempestfall',
    cover:
      '/assets/images/games/Tempestfall.webp',
    href:
      'https://store.steampowered.com/app/1337100/Warhammer_Age_of_Sigmar_Tempestfall/',
  },
  {
    title:
      'Crimen: Mercenary Tales',
    cover:
      '/assets/images/games/Crimen.webp',
    href:
      'https://store.steampowered.com/app/2436680/Crimen__Mercenary_Tales/',
  },
  {
    title: 'Mindset',
    cover:
      '/assets/images/games/Mindset.jpg',
    href:
      'https://www.meta.com/pl-pl/experiences/mindset/5981642121902237/?srsltid=AfmBOoqKW83ez_UhEDm0KKQD8iZOdP4A_O_jMkjChBruOqBS3Soawsqq',
  },
  {
    title: 'Moldwasher',
    cover:
      '/assets/images/games/Moldwasher.webp',
    href:
      'https://store.steampowered.com/app/3688130/Moldwasher/',
  },
  {
    title:
      'Whispers of the Eyeless',
    cover:
      '/assets/images/games/Whisper_of_the_eyeless.jpg',
    href:
      'https://store.steampowered.com/app/2523890/Whispers_of_the_Eyeless/',
  },
  {
    title: 'Painkiller',
    cover:
      '/assets/images/games/Painkiller_2025.jpg',
    href:
      'https://store.steampowered.com/app/2300120/Painkiller/',
  },
  {
    title: 'SAW: Genesis',
    cover:
      '/assets/images/games/Saw_Genesis.jpg',
    href:
      'https://store.steampowered.com/app/2865960/SAW_Genesis/',
  },
] as const;

const localizedProjects = {
  en: {
    metadata: {
      title: 'Projects',
      description:
        'A selection of projects created and presented by Bartosz Girzecki.',
    },

    hero: {
      title: 'Projects',
      lead:
        'Here you will find a selection of technical projects I have created, alongside games I have tested throughout my QA career.',
    },

    projectsAria:
      'Selected projects',

    repository: {
      view:
        'View repository',
      planned:
        'Repository planned',
    },

    technology: {
      label:
        'Technology stack',
      aria:
        'Technology stack for {project}',
    },

    testedGames: {
      title:
        'Games I Have Tested',
      description:
        'A growing selection of game projects I have tested during my professional quality assurance career.',
      previous:
        'Show previous game',
      next:
        'Show next game',
      viewportAria:
        'Games tested during my QA career',
      openAria:
        'Open {game} page',
      coverAlt:
        '{game} cover',
    },

    navigation: {
      aria:
        'Navigate between projects',
      previous:
        'Go to previous project',
      next:
        'Go to next project',
      label:
        'More projects',
    },

    items: [
      {
        status:
          'Active development',
        description:
          'A production-style test automation framework demonstrating maintainable architecture, realistic e-commerce coverage and CI-backed development workflows.',
        logoAlt:
          'Playwright Python QA Automation Framework logo',
      },
      {
        status:
          'Planned',
        description:
          'A backend application built around practical test management workflows, REST API development and automated validation.',
        logoAlt:
          'Flask QA Test Management API logo',
      },
      {
        status:
          'Planned',
        description:
          'An event and community platform for discovering, creating and joining tabletop role-playing game events.',
        logoAlt:
          'Django RPG Event Platform logo',
      },
    ],
  },

  pl: {
    metadata: {
      title: 'Projekty',
      description:
        'Wybrane projekty tworzone i prezentowane przez Bartosza Girzeckiego.',
    },

    hero: {
      title: 'Projekty',
      lead:
        'Tutaj znajdziesz wybrane projekty techniczne, które tworzę, a także gry, które testowałem podczas swojej kariery w QA.',
    },

    projectsAria:
      'Wybrane projekty',

    repository: {
      view:
        'Zobacz repozytorium',
      planned:
        'Repozytorium planowane',
    },

    technology: {
      label:
        'Stack technologiczny',
      aria:
        'Stack technologiczny projektu {project}',
    },

    testedGames: {
      title:
        'Gry, które testowałem',
      description:
        'Stale rosnący wybór projektów growych, które testowałem podczas swojej zawodowej kariery w quality assurance.',
      previous:
        'Pokaż poprzednią grę',
      next:
        'Pokaż następną grę',
      viewportAria:
        'Gry testowane podczas mojej kariery w QA',
      openAria:
        'Otwórz stronę gry {game}',
      coverAlt:
        'Okładka gry {game}',
    },

    navigation: {
      aria:
        'Nawigacja między projektami',
      previous:
        'Przejdź do poprzedniego projektu',
      next:
        'Przejdź do następnego projektu',
      label:
        'Więcej projektów',
    },

    items: [
      {
        status:
          'Aktywnie rozwijany',
        description:
          'Framework automatyzacji testów o strukturze zbliżonej do projektu produkcyjnego, prezentujący utrzymywalną architekturę, realistyczne testy e-commerce oraz workflow wspierany przez CI.',
        logoAlt:
          'Logo Playwright Python QA Automation Framework',
      },
      {
        status:
          'Planowany',
        description:
          'Aplikacja backendowa oparta na praktycznych procesach zarządzania testami, tworzeniu REST API oraz automatycznej walidacji.',
        logoAlt:
          'Logo Flask QA Test Management API',
      },
      {
        status:
          'Planowany',
        description:
          'Platforma eventowa i społecznościowa do wyszukiwania, tworzenia oraz dołączania do wydarzeń związanych z grami fabularnymi.',
        logoAlt:
          'Logo Django RPG Event Platform',
      },
    ],
  },
} as const;

export const getProjectsTranslations = (
  locale: Locale
) => {
  const localized =
    localizedProjects[locale];

  return {
    ...localized,
    projects: localized.items.map(
      (item, index) => ({
        ...sharedProjects[index],
        ...item,
      })
    ),
    games: testedGames,
  };
};