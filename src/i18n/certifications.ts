import type { Locale } from './common';

export const certificationsTranslations = {
  en: {
    metadata: {
      title: 'Certifications',
      description:
        'Professional certifications, completed technical programs and selected training completed by Bartosz Girzecki.',
    },

    hero: {
      title: 'Certifications',
      lead:
        'Formal certification, completed professional programs and selected technical training supporting my work across software quality, automation and development.',
    },

    archive: {
      aria: 'Credential archive summary',
      label: 'Credential archive',
      qa: 'QA certification',
      programs: 'Professional programs',
      hours: 'Selected course hours',
    },

    labels: {
      credentialNumber: 'Credential no.',
      issuedTo: 'Issued to',
      dateAwarded: 'Date awarded',
      status: 'Status',
      completed: 'Completed',
      diploma: 'diploma',
    },

    primaryCredential: {
      type: 'Quality Assurance certification',
      date: '05 Apr 2023',
      description:
        'A formal software testing qualification confirming Foundation Level knowledge within the ISTQB certification framework.',
      documentLabel: 'View certificate',
      documentAlts: [
        'Physical ISTQB Certified Tester Foundation Level certificate awarded to Bartosz Girzecki.',
      ],
    },

    programsSection: {
      title: 'Programs & Training',
      lead:
        'Longer-form programs and instructor preparation completed outside the formal certification framework.',
    },

    professionalPrograms: [
      {
        type: 'Professional program',
        title: 'Back-End Developer: Python',
        date: '01 Mar 2020',
        duration: '240 hours',
        description:
          'An intensive practical backend development program combining programming, databases, web technologies and project work.',
        topics: [
          'Python',
          'Advanced Python',
          'Django',
          'REST',
          'Databases',
          'JavaScript',
          'Git & GitFlow',
          'Scrum & Agile',
        ],
        documentLabel: 'View diploma',
        documentAlts: [
          'Physical Coders Lab Back-End Developer Python course diploma awarded to Bartosz Girzecki.',
          'First page of the Coders Lab Back-End Developer Python diploma supplement.',
          'Second page of the Coders Lab Back-End Developer Python diploma supplement.',
        ],
      },
      {
        type: 'Instructor training',
        title:
          'Programming Trainer for Children and Youth',
        date: '02 Jul 2026',
        duration: 'Completed training',
        description:
          'Training preparing participants to work as programming instructors for children and young people.',
        topics: [
          'Programming education',
          'Working with young learners',
          'Technical instruction',
          'Lesson delivery',
        ],
        documentLabel: 'View certificate',
        documentAlts: [
          'Physical programming trainer certificate issued by Giganci Programowania to Bartosz Girzecki.',
        ],
      },
    ],

    courseArchive: {
      title: 'Technical Course Archive',
      lead:
        'Selected completed courses grouped by their practical relevance to quality engineering, software development and game creation.',
      viewCredential: 'View credential',
    },

    courseGroups: [
      {
        title: 'QA Automation',
        description:
          'Selected training directly supporting the transition toward Python-based test automation and technical QA.',
        courses: [
          {
            date: '23 Apr 2026',
            duration: '11.5 hours',
            documentAlt:
              'Udemy certificate for API automation testing with Python and BDD.',
          },
          {
            date: '08 May 2026',
            duration: '13.5 hours',
            documentAlt:
              'Udemy certificate for Playwright Python automation testing.',
          },
          {
            date: '13 May 2026',
            duration: '18 hours',
            documentAlt:
              'Udemy certificate for Selenium WebDriver with Python.',
          },
        ],
      },
      {
        title: 'Programming & Game Development',
        description:
          'Programming foundations and practical development work focused on C++ and Unreal Engine systems.',
        courses: [
          {
            date: '12 Jan 2023',
            duration: '46 hours',
            documentAlt:
              'Udemy certificate for Beginning C++ Programming.',
          },
          {
            date: '06 Jan 2026',
            duration: '44 hours',
            documentAlt:
              'Udemy certificate for Unreal Engine 5 C++ Advanced Action RPG.',
          },
        ],
      },
      {
        title: '3D Creation',
        description:
          'Additional creative training supporting the production and understanding of three-dimensional game assets.',
        courses: [
          {
            date: '27 Feb 2026',
            duration: '14 hours',
            documentAlt:
              'Udemy certificate for Complete Blender Creator 3D Modelling.',
          },
        ],
      },
    ],

    document: {
      preview: 'Document preview',
      close: 'Close document preview',
    },

    navigation: {
      aria:
        'Navigate between certification sections',
      previous:
        'Go to previous certification section',
      next:
        'Go to next certification section',
      label: 'See more',
    },
  },

  pl: {
    metadata: {
      title: 'Certyfikaty',
      description:
        'Certyfikaty zawodowe, ukończone programy techniczne i wybrane szkolenia Bartosza Girzeckiego.',
    },

    hero: {
      title: 'Certyfikaty',
      lead:
        'Formalne certyfikaty, ukończone programy zawodowe oraz wybrane szkolenia techniczne wspierające moją pracę w obszarach jakości oprogramowania, automatyzacji i developmentu.',
    },

    archive: {
      aria: 'Podsumowanie kwalifikacji',
      label: 'Archiwum kwalifikacji',
      qa: 'Certyfikat QA',
      programs: 'Programy zawodowe',
      hours: 'Godziny wybranych kursów',
    },

    labels: {
      credentialNumber: 'Nr certyfikatu',
      issuedTo: 'Wydano dla',
      dateAwarded: 'Data uzyskania',
      status: 'Status',
      completed: 'Ukończono',
      diploma: 'dyplom',
    },

    primaryCredential: {
      type: 'Certyfikat Quality Assurance',
      date: '05.04.2023',
      description:
        'Formalny certyfikat z zakresu testowania oprogramowania potwierdzający wiedzę na poziomie Foundation Level w ramach programu certyfikacji ISTQB.',
      documentLabel: 'Zobacz certyfikat',
      documentAlts: [
        'Certyfikat ISTQB Certified Tester Foundation Level przyznany Bartoszowi Girzeckiemu.',
      ],
    },

    programsSection: {
      title: 'Programy i szkolenia',
      lead:
        'Rozbudowane programy zawodowe i przygotowanie instruktorskie ukończone poza formalnym systemem certyfikacji.',
    },

    professionalPrograms: [
      {
        type: 'Program zawodowy',
        title: 'Back-End Developer: Python',
        date: '01.03.2020',
        duration: '240 godzin',
        description:
          'Intensywny praktyczny program backend developmentu łączący programowanie, bazy danych, technologie webowe i pracę projektową.',
        topics: [
          'Python',
          'Zaawansowany Python',
          'Django',
          'REST',
          'Bazy danych',
          'JavaScript',
          'Git & GitFlow',
          'Scrum & Agile',
        ],
        documentLabel: 'Zobacz dyplom',
        documentAlts: [
          'Dyplom ukończenia kursu Back-End Developer Python w Coders Lab przyznany Bartoszowi Girzeckiemu.',
          'Pierwsza strona suplementu do dyplomu Back-End Developer Python w Coders Lab.',
          'Druga strona suplementu do dyplomu Back-End Developer Python w Coders Lab.',
        ],
      },
      {
        type: 'Szkolenie instruktorskie',
        title:
          'Trener Programowania dla Dzieci i Młodzieży',
        date: '02.07.2026',
        duration: 'Ukończone szkolenie',
        description:
          'Szkolenie przygotowujące do pracy w charakterze instruktora programowania dla dzieci i młodzieży.',
        topics: [
          'Edukacja programistyczna',
          'Praca z młodymi uczniami',
          'Nauczanie zagadnień technicznych',
          'Prowadzenie zajęć',
        ],
        documentLabel: 'Zobacz certyfikat',
        documentAlts: [
          'Certyfikat trenera programowania wydany Bartoszowi Girzeckiemu przez Gigantów Programowania.',
        ],
      },
    ],

    courseArchive: {
      title: 'Archiwum kursów technicznych',
      lead:
        'Wybrane ukończone kursy pogrupowane według ich praktycznego znaczenia dla quality engineering, software developmentu i tworzenia gier.',
      viewCredential: 'Zobacz certyfikat',
    },

    courseGroups: [
      {
        title: 'Automatyzacja testów',
        description:
          'Wybrane szkolenia bezpośrednio wspierające rozwój w kierunku automatyzacji testów w Pythonie i technicznego QA.',
        courses: [
          {
            date: '23.04.2026',
            duration: '11,5 godz.',
            documentAlt:
              'Certyfikat Udemy z automatyzacji testów API z wykorzystaniem Pythona i BDD.',
          },
          {
            date: '08.05.2026',
            duration: '13,5 godz.',
            documentAlt:
              'Certyfikat Udemy z automatyzacji testów Playwright w Pythonie.',
          },
          {
            date: '13.05.2026',
            duration: '18 godz.',
            documentAlt:
              'Certyfikat Udemy z Selenium WebDriver i Pythona.',
          },
        ],
      },
      {
        title: 'Programowanie i Game Development',
        description:
          'Podstawy programowania i praktyczna praca developerska skoncentrowana na C++ oraz systemach Unreal Engine.',
        courses: [
          {
            date: '12.01.2023',
            duration: '46 godz.',
            documentAlt:
              'Certyfikat Udemy z kursu Beginning C++ Programming.',
          },
          {
            date: '06.01.2026',
            duration: '44 godz.',
            documentAlt:
              'Certyfikat Udemy z kursu Unreal Engine 5 C++ Advanced Action RPG.',
          },
        ],
      },
      {
        title: 'Tworzenie 3D',
        description:
          'Dodatkowe szkolenie kreatywne wspierające tworzenie i rozumienie trójwymiarowych assetów wykorzystywanych w grach.',
        courses: [
          {
            date: '27.02.2026',
            duration: '14 godz.',
            documentAlt:
              'Certyfikat Udemy z kursu Complete Blender Creator 3D Modelling.',
          },
        ],
      },
    ],

    document: {
      preview: 'Podgląd dokumentu',
      close: 'Zamknij podgląd dokumentu',
    },

    navigation: {
      aria:
        'Nawigacja między sekcjami certyfikatów',
      previous:
        'Przejdź do poprzedniej sekcji certyfikatów',
      next:
        'Przejdź do następnej sekcji certyfikatów',
      label: 'Zobacz więcej',
    },
  },
} as const;

export const getCertificationsTranslations = (
  locale: Locale
) => certificationsTranslations[locale];