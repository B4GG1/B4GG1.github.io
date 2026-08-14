import type { Locale } from './common';

const sharedExperience = [
  {
    company: 'Giganci Programowania',
    companyUrl:
      'https://giganciprogramowania.edu.pl/',
    logo:
      '/assets/images/companies/Giganci_Programowania_Logo.png',
    tags: [
      'Minecraft Education',
      'Scratch',
      'ScratchJr',
      'Python',
      'Lua',
      'Roblox Studio',
      'Blender',
      'Google Meet',
      'Discord',
    ],
  },
  {
    company: 'Anshar Studios',
    companyUrl:
      'https://ansharstudios.com/',
    logo:
      '/assets/images/companies/Anshar_Logo.png',
    tags: [
      'PC',
      'AA+ games',
      'Indie games',
      'PlayStation 5',
      'Xbox Series X/S',
      'Jira',
      'Confluence',
      'TestRail',
      'Miro',
      'Perforce P4',
      'Jenkins',
      'GDK',
      'Neighborhood',
      'Steam',
      'OBS Studio',
      'OpenShot Video Editor',
      'Microsoft 365',
      'Discord',
      'Slack',
      'Agile / Scrum',
    ],
  },
  {
    company: 'Kodland',
    companyUrl:
      'https://www.kodland.org/pl',
    logo:
      '/assets/images/companies/Kodland_Logo.png',
    tags: [
      'Scratch',
      'Python',
      'Lua',
      'Roblox Studio',
      'Zoom',
      'WhatsApp',
      'Telegram',
    ],
  },
  {
    company: 'Carbon Studio / Iron VR',
    companyUrl:
      'https://carbonstudio.pl/',
    logo:
      '/assets/images/companies/Carbon_Iron_VR_Logo.png',
    tags: [
      'VR',
      'AA games',
      'Indie games',
      'Meta Quest',
      'HTC Vive',
      'Valve Index',
      'PlayStation VR2',
      'Redmine',
      'Jira',
      'Confluence',
      'SVN / TortoiseSVN',
      'Jenkins',
      'Microsoft 365',
      'Discord',
      'OBS Studio',
      'OpenShot Video Editor',
      'Agile / Scrum',
    ],
  },
  {
    company: 'Keywords Studios',
    companyUrl:
      'https://www.keywordsstudios.com/',
    logo:
      '/assets/images/companies/KWS_Logo.png',
    tags: [
      'AAA games',
      'PC',
      'PlayStation 4 / 5',
      'Xbox One / Series (X/S)',
      'Jira',
      'Confluence',
      'TestRail',
      'Microsoft 365',
      'Microsoft Teams',
      'OBS Studio',
      'OpenShot Video Editor',
    ],
  },
] as const;

const localizedExperience = {
  en: {
    metadata: {
      title: 'Experience',
      description:
        'Professional experience of Bartosz Girzecki across software quality assurance, game development and technical education.',
    },
    hero: {
      title: 'Experience',
      lead:
        'Several years of professional experience across software quality assurance, multi-platform game development, virtual reality and technical education — with many more challenges, technologies and opportunities still ahead.',
    },
    timelineCue: {
      label: 'Start from the beginning',
      aria:
        'Move to the end of my professional timeline',
    },
    timelineAria:
      'Professional experience timeline',
    responsibilitiesHeading:
      'Responsibilities:',
    companyWebsiteAria:
      '{company} website — opens in a new tab',
    tagsAria:
      'Technologies and areas used at {company}',
    items: [
      {
        period: '07.2026 — Present',
        role:
          'Programming & Game Development Tutor',
        summary:
          'Programming and game development education for children and teenagers aged 6–18, delivered through online and in-person classes.',
        responsibilities: [
          'Delivered online and in-person programming and game development classes for children and teenagers aged 6–18.',
          'Taught programming, game creation and computer graphics using Minecraft Education, Scratch, ScratchJr, Python, Lua, Roblox Studio, Blender and a variety of other engaging educational tools.',
          'Adapted lesson delivery, exercises and pacing to students’ age, experience and individual learning needs.',
          'Communicated students’ educational progress and learning outcomes to parents and relevant supervisors.',
        ],
      },
      {
        period: '03.2024 — 04.2026',
        role: 'QA Specialist',
        summary:
          'Software quality assurance for single-player and multiplayer AA+ titles developed for PC and ninth-generation consoles, including PlayStation 5 and Xbox Series X/S.',
        responsibilities: [
          'Tested single-player and multiplayer AA+ and indie titles on PC, PlayStation 5 and Xbox Series X/S.',
          'Reported and documented defects, proposed potential solutions and prepared detailed QA reports using Jira and Confluence.',
          'Created project documentation, test scenarios, supporting testing materials, and contributed to the development of internal QA standards, working practices and team processes.',
          'Collaborated closely with development, game design and production teams through daily and weekly sync meetings.',
        ],
      },
      {
        period: '09.2023 — 03.2024',
        role:
          'Programming & Game Development Tutor',
        summary:
          'Remote programming and game development education for children and teenagers, delivered through online classes focused on practical digital creation.',
        responsibilities: [
          'Delivered remote programming and game development classes using Scratch, Python and Roblox Studio.',
          'Adapted lesson pacing, exercises and explanations to students’ age, experience and individual learning needs.',
          'Monitored students’ progress and communicated learning outcomes directly to students, parents and relevant supervisors.',
          'Reviewed educational materials and contributed suggestions for improving lesson delivery and teaching methods.',
        ],
      },
      {
        period: '11.2021 — 02.2024',
        role: 'QA Engineer',
        summary:
          'Quality assurance for virtual reality titles across standalone, PC-connected and console-based VR systems, including Meta Quest, HTC Vive, Valve Index and PlayStation VR2.',
        responsibilities: [
          'Tested VR titles across several different VR devices, including Meta Quest, HTC Vive, Valve Index and PlayStation VR2.',
          'Reported and documented defects, proposed potential solutions and prepared detailed QA reports using Redmine as well as Jira and Confluence.',
          'Created project documentation, test scenarios, supporting testing materials, and contributed to the development of internal QA standards, working practices and team processes.',
          'Collaborated closely with development, game design and production teams through direct communication and QA sync meetings.',
        ],
      },
      {
        period: '09.2020 — 10.2021',
        role: 'Functional QA Tester',
        summary:
          'Outsourced functional quality assurance for AAA titles on PC and eighth- and ninth-generation consoles, performed for external clients across multiple projects.',
        responsibilities: [
          'Performed smoke, load, performance, regression, destructive and other forms of testing based on documentation and requirements supplied by external clients.',
          'Reported and documented defects and prepared detailed QA reports using Jira and Confluence.',
          'Executed structured test plans and test cases supplied by external clients through TestRail, ensuring consistent coverage across supported platforms and project requirements.',
        ],
      },
    ],
  },

  pl: {
    metadata: {
      title: 'Doświadczenie',
      description:
        'Doświadczenie zawodowe Bartosza Girzeckiego w obszarach zapewniania jakości oprogramowania, tworzenia gier i edukacji technicznej.',
    },
    hero: {
      title: 'Doświadczenie',
      lead:
        'Kilka lat doświadczenia zawodowego w zapewnianiu jakości oprogramowania, wieloplatformowym tworzeniu gier, wirtualnej rzeczywistości i edukacji technicznej — z wieloma kolejnymi wyzwaniami, technologiami i możliwościami jeszcze przede mną.',
    },
    timelineCue: {
      label: 'Zacznij od początku',
      aria:
        'Przejdź do początku mojej kariery zawodowej',
    },
    timelineAria:
      'Oś doświadczenia zawodowego',
    responsibilitiesHeading:
      'Zakres obowiązków:',
    companyWebsiteAria:
      'Strona internetowa {company} — otwiera się w nowej karcie',
    tagsAria:
      'Technologie i obszary wykorzystywane w {company}',
    items: [
      {
        period: '07.2026 — Obecnie',
        role:
          'Tutor Programowania i Tworzenia Gier',
        summary:
          'Prowadzenie zajęć z programowania i tworzenia gier dla dzieci i młodzieży w wieku 6–18 lat, online oraz stacjonarnie.',
        responsibilities: [
          'Prowadziłem zajęcia online i stacjonarne z programowania i tworzenia gier dla dzieci i młodzieży w wieku 6–18 lat.',
          'Uczyłem programowania, tworzenia gier i grafiki komputerowej z wykorzystaniem Minecraft Education, Scratch, ScratchJr, Pythona, Lua, Roblox Studio, Blendera oraz innych angażujących narzędzi edukacyjnych.',
          'Dostosowywałem sposób prowadzenia zajęć, ćwiczenia i tempo pracy do wieku, doświadczenia oraz indywidualnych potrzeb uczniów.',
          'Informowałem rodziców i odpowiednich przełożonych o postępach edukacyjnych uczniów i osiąganych efektach nauki.',
        ],
      },
      {
        period: '03.2024 — 04.2026',
        role: 'Specjalista QA',
        summary:
          'Zapewnianie jakości jedno- i wieloosobowych produkcji AA+ tworzonych na PC oraz konsole dziewiątej generacji, w tym PlayStation 5 i Xbox Series X/S.',
        responsibilities: [
          'Testowałem jedno- i wieloosobowe produkcje AA+ i indie na PC, PlayStation 5 oraz Xbox Series X/S.',
          'Raportowałem i dokumentowałem błędy, proponowałem potencjalne rozwiązania oraz przygotowywałem szczegółowe raporty QA z wykorzystaniem Jira i Confluence.',
          'Tworzyłem dokumentację projektową, scenariusze testowe i materiały wspierające testy oraz uczestniczyłem w rozwijaniu wewnętrznych standardów QA, sposobów pracy i procesów zespołowych.',
          'Ściśle współpracowałem z zespołami developmentu, game designu i produkcji podczas codziennych i cotygodniowych spotkań synchronizacyjnych.',
        ],
      },
      {
        period: '09.2023 — 03.2024',
        role:
          'Tutor Programowania i Tworzenia Gier',
        summary:
          'Zdalna edukacja z zakresu programowania i tworzenia gier dla dzieci i młodzieży, prowadzona w formie zajęć online skupionych na praktycznym tworzeniu cyfrowych projektów.',
        responsibilities: [
          'Prowadziłem zdalne zajęcia z programowania i tworzenia gier z wykorzystaniem Scratcha, Pythona i Roblox Studio.',
          'Dostosowywałem tempo zajęć, ćwiczenia i sposób tłumaczenia do wieku, doświadczenia oraz indywidualnych potrzeb uczniów.',
          'Monitorowałem postępy uczniów i komunikowałem efekty nauki bezpośrednio uczniom, rodzicom oraz odpowiednim przełożonym.',
          'Analizowałem materiały edukacyjne i proponowałem sposoby poprawy prowadzenia zajęć oraz metod nauczania.',
        ],
      },
      {
        period: '11.2021 — 02.2024',
        role: 'Inżynier QA',
        summary:
          'Zapewnianie jakości gier VR na samodzielnych, podłączanych do PC oraz konsolowych systemach wirtualnej rzeczywistości, w tym Meta Quest, HTC Vive, Valve Index i PlayStation VR2.',
        responsibilities: [
          'Testowałem gry VR na różnych urządzeniach wirtualnej rzeczywistości, w tym Meta Quest, HTC Vive, Valve Index i PlayStation VR2.',
          'Raportowałem i dokumentowałem błędy, proponowałem potencjalne rozwiązania oraz przygotowywałem szczegółowe raporty QA z wykorzystaniem Redmine, Jira i Confluence.',
          'Tworzyłem dokumentację projektową, scenariusze testowe i materiały wspierające testy oraz uczestniczyłem w rozwijaniu wewnętrznych standardów QA, sposobów pracy i procesów zespołowych.',
          'Ściśle współpracowałem z zespołami developmentu, game designu i produkcji poprzez bezpośrednią komunikację oraz spotkania synchronizacyjne QA.',
        ],
      },
      {
        period: '09.2020 — 10.2021',
        role: 'Tester Funkcjonalny QA',
        summary:
          'Funkcjonalne zapewnianie jakości gier AAA na PC oraz konsolach ósmej i dziewiątej generacji, realizowane dla zewnętrznych klientów w ramach wielu projektów.',
        responsibilities: [
          'Wykonywałem testy smoke, load, performance, regression, destructive oraz inne rodzaje testów zgodnie z dokumentacją i wymaganiami dostarczanymi przez zewnętrznych klientów.',
          'Raportowałem i dokumentowałem błędy oraz przygotowywałem szczegółowe raporty QA z wykorzystaniem Jira i Confluence.',
          'Realizowałem ustrukturyzowane plany i przypadki testowe dostarczane przez zewnętrznych klientów za pośrednictwem TestRail, zapewniając spójne pokrycie wspieranych platform i wymagań projektowych.',
        ],
      },
    ],
  },
} as const;

export const getExperienceTranslations = (
  locale: Locale
) => {
  const localized =
    localizedExperience[locale];

  return {
    ...localized,
    items: localized.items.map(
      (item, index) => ({
        ...sharedExperience[index],
        ...item,
      })
    ),
  };
};