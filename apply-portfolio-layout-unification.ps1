$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

$indexContent = @'
---
import BaseLayout from '../layouts/BaseLayout.astro';

const sections = [
  {
    href: '/experience',
    title: 'Experience',
    description: 'Professional background, responsibilities and practical experience.',
  },
  {
    href: '/skills',
    title: 'Skills',
    description: 'Technical capabilities, tools and areas of continued development.',
  },
  {
    href: '/projects',
    title: 'Projects',
    description: 'Public projects demonstrating automation and software engineering skills.',
  },
  {
    href: '/certifications',
    title: 'Certifications',
    description: 'Professional credentials, completed programs and selected training.',
  },
  {
    href: '/contact',
    title: 'Contact',
    description: 'Contact details, professional profiles and downloadable CV files.',
  },
];
---

<BaseLayout
  title="Home"
  description="Technical portfolio of Bartosz Girzecki, presenting professional experience, technical projects and areas of continued development."
>
  <section class="home-intro" aria-labelledby="home-title">
    <div class="intro-top">
      <div class="portrait-frame">
        <div class="portrait-placeholder">
          <span>Professional photo</span>
        </div>
      </div>

      <div class="intro-heading">
        <h1 id="home-title">
          Hi, I'm <span>Bartosz Girzecki.</span>
        </h1>
      </div>
    </div>

    <div class="intro-description">
      <p>
        <strong>Welcome to my portfolio.</strong> I have nearly six years
        of professional quality assurance experience gained in the game
        development industry. That background shaped the way I approach
        software, communication and product quality. I am currently
        expanding into Python test automation and web and backend
        engineering. My primary long-term creative direction is game
        design, supported by practical game development experience.
      </p>
    </div>
  </section>

  <a
    class="scroll-cue"
    href="#portfolio-navigation"
    data-scroll-cue
    aria-label="Explore my portfolio"
  >
    <span>Explore my portfolio</span>
    <span class="scroll-cue-arrow" aria-hidden="true">↓</span>
  </a>

  <section
    id="portfolio-navigation"
    class="portfolio-navigation"
    aria-labelledby="navigation-title"
  >
    <div class="navigation-heading">
      <h2 id="navigation-title">
        Find the information most relevant to you.
      </h2>

      <p>
        Use the sections below to explore my professional background,
        technical capabilities and current work.
      </p>
    </div>

    <nav class="section-list" aria-label="Portfolio sections">
      {
        sections.map(({ href, title, description }) => (
          <a class="section-link" href={href}>
            <span class="section-content">
              <strong>{title}</strong>
              <span>{description}</span>
            </span>
          </a>
        ))
      }
    </nav>
  </section>
</BaseLayout>

<script>
  const scrollCue = document.querySelector('[data-scroll-cue]');
  const navigationHeading = document.querySelector(
    '.navigation-heading'
  );

  const updateScrollCue = () => {
    if (
      !(scrollCue instanceof HTMLAnchorElement) ||
      !(navigationHeading instanceof HTMLElement)
    ) {
      return;
    }

    const headingPosition =
      navigationHeading.getBoundingClientRect().top;

    const shouldHide =
      headingPosition <= window.innerHeight * 0.88;

    scrollCue.classList.toggle('is-hidden', shouldHide);
    scrollCue.tabIndex = shouldHide ? -1 : 0;
    scrollCue.setAttribute('aria-hidden', String(shouldHide));
  };

  updateScrollCue();

  window.addEventListener('scroll', updateScrollCue, {
    passive: true,
  });

  window.addEventListener('resize', updateScrollCue);
</script>

<style>
  :global(.page-content) {
    padding-top: clamp(2.5rem, 5vw, 4rem);
  }

  .home-intro {
    width: min(80vw, 88rem);
    margin-inline: auto;
    padding-top: clamp(0.5rem, 2vw, 1.5rem);
  }

  .intro-top {
    display: grid;
    grid-template-columns: minmax(220px, 290px) minmax(0, 1fr);
    align-items: center;
    gap: clamp(2.5rem, 6vw, 6rem);
  }

  .portrait-frame {
    position: relative;
    width: min(100%, 275px);
    aspect-ratio: 1;
    padding: 0.4rem;
    border: 1px solid rgba(125, 211, 252, 0.34);
    border-radius: 50%;
    background:
      linear-gradient(
        145deg,
        rgba(96, 165, 250, 0.7),
        rgba(29, 78, 216, 0.08) 45%,
        rgba(125, 211, 252, 0.45)
      );
    box-shadow:
      0 0 0 0.5rem rgba(59, 130, 246, 0.035),
      0 2rem 6rem rgba(0, 0, 0, 0.38),
      0 0 4rem rgba(37, 99, 235, 0.13);
  }

  .portrait-frame::after {
    position: absolute;
    inset: -1.25rem;
    z-index: -1;
    content: "";
    border-radius: 50%;
    background: rgba(37, 99, 235, 0.12);
    filter: blur(2.5rem);
  }

  .portrait-placeholder {
    width: 100%;
    height: 100%;
    display: grid;
    place-items: center;
    overflow: hidden;
    border-radius: 50%;
    background:
      radial-gradient(
        circle at 50% 32%,
        rgba(96, 165, 250, 0.2),
        transparent 30%
      ),
      linear-gradient(
        145deg,
        var(--color-surface-strong),
        var(--color-bg-soft)
      );
  }

  .portrait-placeholder span {
    max-width: 8rem;
    color: var(--color-text-muted);
    font-family: var(--font-mono);
    font-size: 0.72rem;
    letter-spacing: 0.08em;
    line-height: 1.5;
    text-align: center;
    text-transform: uppercase;
  }

  .intro-heading {
    min-width: 0;
  }

  .intro-heading h1 {
    font-size: clamp(2.9rem, 5.4vw, 5.4rem);
    line-height: 0.98;
    letter-spacing: -0.06em;
    white-space: nowrap;
  }

  .intro-heading h1 span {
    color: transparent;
    background:
      linear-gradient(
        105deg,
        var(--color-blue-bright),
        var(--color-blue)
      );
    -webkit-background-clip: text;
    background-clip: text;
  }

  .intro-description {
    max-width: 920px;
    margin: clamp(2.75rem, 5vw, 4.5rem) auto 0;
    text-align: center;
  }

  .intro-description p {
    margin: 0;
    color: var(--color-text-secondary);
    font-size: clamp(1.05rem, 1.7vw, 1.2rem);
    line-height: 1.8;
  }

  .intro-description strong {
    color: var(--color-text);
    font-weight: 600;
  }

  .scroll-cue {
    position: fixed;
    bottom: max(1.5rem, env(safe-area-inset-bottom));
    left: 50%;
    z-index: 40;
    min-height: 3.25rem;
    padding: 0.85rem 1.2rem;
    display: inline-flex;
    align-items: center;
    gap: 0.85rem;
    border: 1px solid var(--color-border-strong);
    border-radius: 999px;
    color: var(--color-text);
    background:
      linear-gradient(
        135deg,
        rgba(18, 27, 40, 0.94),
        rgba(8, 12, 19, 0.9)
      );
    box-shadow:
      0 1rem 3rem rgba(0, 0, 0, 0.38),
      0 0 2rem rgba(37, 99, 235, 0.13);
    -webkit-backdrop-filter: blur(16px);
    backdrop-filter: blur(16px);
    font-family: var(--font-mono);
    font-size: 0.76rem;
    letter-spacing: 0.04em;
    text-decoration: none;
    opacity: 1;
    transform: translateX(-50%);
    transition:
      opacity var(--transition-standard),
      border-color var(--transition-fast),
      background-color var(--transition-fast),
      transform var(--transition-standard);
  }

  .scroll-cue:hover,
  .scroll-cue:focus-visible {
    border-color: var(--color-blue-bright);
    background: var(--color-surface-strong);
  }

  .scroll-cue.is-hidden {
    pointer-events: none;
    opacity: 0;
    transform: translate(-50%, 0.75rem);
  }

  .scroll-cue-arrow {
    color: var(--color-blue-bright);
    font-size: 1rem;
    animation: scroll-cue-bounce 1.6s ease-in-out infinite;
  }

  .portfolio-navigation {
    width: min(80vw, 88rem);
    margin:
      clamp(12rem, 22vw, 18rem)
      auto
      0;
    scroll-margin-top: 7rem;
  }

  .navigation-heading {
    width: 100%;
    display: grid;
    grid-template-columns:
      minmax(0, 4fr)
      minmax(0, 6fr);
    align-items: center;
    gap: clamp(2rem, 5vw, 5rem);
  }

  .navigation-heading h2 {
    max-width: 740px;
    margin: 0;
  }

  .navigation-heading > p {
    max-width: 680px;
    margin: 0;
    color: var(--color-text-secondary);
    font-size: 1.05rem;
    line-height: 1.7;
  }

  .section-list {
    margin-top: clamp(3rem, 6vw, 5rem);
  }

  .section-link {
    position: relative;
    min-height: 8.75rem;
    padding: 1.6rem 1rem;
    display: flex;
    align-items: center;
    overflow: hidden;
    border-top: 1px solid var(--color-border);
    color: inherit;
    text-decoration: none;
    transform: scale(1);
    transform-origin: center;
    transition:
      border-color var(--transition-fast),
      background-color var(--transition-standard),
      transform var(--transition-standard);
    will-change: transform;
  }

  .section-link:last-child {
    border-bottom: 1px solid var(--color-border);
  }

  .section-link::before {
    position: absolute;
    inset: 0;
    content: "";
    background:
      linear-gradient(
        90deg,
        rgba(59, 130, 246, 0.1),
        rgba(59, 130, 246, 0.025) 55%,
        transparent
      );
    opacity: 0;
    transform: translateX(-2rem);
    transition:
      opacity var(--transition-standard),
      transform var(--transition-standard);
  }

  .section-link:hover,
  .section-link:focus-visible {
    z-index: 2;
    border-color: var(--color-border-strong);
    transform: scale(1.018);
  }

  .section-link:hover::before,
  .section-link:focus-visible::before {
    opacity: 1;
    transform: translateX(0);
  }

  .section-content {
    position: relative;
    z-index: 1;
    width: 100%;
    display: grid;
    grid-template-columns:
      minmax(170px, 4fr)
      minmax(0, 6fr);
    align-items: center;
    gap: clamp(2rem, 4vw, 4rem);
  }

  .section-content strong {
    width: fit-content;
    color: var(--color-text);
    background:
      linear-gradient(
        105deg,
        #ffffff 0%,
        #dbeafe 42%,
        var(--color-blue-light) 100%
      );
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: var(--color-text);
    font-size: clamp(1.4rem, 3vw, 2.25rem);
    font-weight: 570;
    letter-spacing: -0.04em;
    transition:
      color var(--transition-standard),
      -webkit-text-fill-color var(--transition-standard);
  }

  .section-link:hover .section-content strong,
  .section-link:focus-visible .section-content strong {
    color: transparent;
    -webkit-text-fill-color: transparent;
  }

  .section-content > span {
    max-width: none;
    justify-self: end;
    color: var(--color-text-muted);
    font-size: clamp(0.88rem, 1.05vw, 1rem);
    line-height: 1.65;
    text-align: right;
    white-space: nowrap;
    transition: color var(--transition-standard);
  }

  .section-link:hover .section-content > span,
  .section-link:focus-visible .section-content > span {
    color: var(--color-text);
  }

  @keyframes scroll-cue-bounce {
    0%,
    100% {
      transform: translateY(-0.12rem);
    }

    50% {
      transform: translateY(0.22rem);
    }
  }

  @media (prefers-reduced-motion: no-preference) {
    .intro-top,
    .intro-description,
    .portfolio-navigation {
      opacity: 0;
      animation:
        home-reveal 700ms
        cubic-bezier(0.22, 1, 0.36, 1)
        forwards;
    }

    .intro-description {
      animation-delay: 100ms;
    }

    .portfolio-navigation {
      animation-delay: 220ms;
    }

    @keyframes home-reveal {
      from {
        opacity: 0;
        transform: translateY(1.25rem);
      }

      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  }

  @media (max-width: 900px) {
    .intro-top {
      grid-template-columns: minmax(180px, 230px) minmax(0, 1fr);
      gap: 2.5rem;
    }

    .intro-heading h1 {
      font-size: clamp(2.5rem, 5.2vw, 3.8rem);
    }

    .navigation-heading {
      grid-template-columns: 1fr;
      gap: 1.25rem;
      text-align: center;
    }

    .navigation-heading h2,
    .navigation-heading > p {
      margin-inline: auto;
    }

    .section-content {
      grid-template-columns: 1fr;
      gap: 0.75rem;
    }

    .section-content > span {
      justify-self: start;
      text-align: left;
      white-space: normal;
    }
  }

  @media (max-width: 700px) {
    .home-intro,
    .portfolio-navigation {
      width: 80vw;
    }

    .intro-top {
      grid-template-columns: 1fr;
      align-items: start;
    }

    .portrait-frame {
      width: min(62vw, 240px);
    }

    .intro-heading h1 {
      font-size: clamp(3.25rem, 15vw, 5rem);
      white-space: normal;
    }

    .section-link {
      min-height: auto;
      padding-block: 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .scroll-cue {
      bottom: max(1rem, env(safe-area-inset-bottom));
      width: min(calc(100% - 2rem), 18rem);
      justify-content: center;
    }

    .section-link {
      padding-inline: 0;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .scroll-cue-arrow {
      animation: none;
    }

    .section-content > span {
      transition: none;
    }
  }
</style>

'@

$experienceContent = @'
---
import BaseLayout from '../layouts/BaseLayout.astro';

const experience = [
  {
    period: '03.2024 — 04.2026',
    role: 'QA Specialist',
    company: 'Anshar Studios',
    logo: 'AS',
    summary:
      'Software quality assurance across PC and current-generation console projects, covering functional, regression and certification-focused testing.',
    responsibilities: [
      'Tested software on PC, PlayStation 5 and Xbox Series X/S.',
      'Documented defects in Jira and prepared detailed test reports.',
      'Created project documentation, test scenarios and QA materials using Confluence and TestRail.',
      'Collaborated closely with developers, producers and game designers.',
    ],
    tags: [
      'PC',
      'PlayStation 5',
      'Xbox Series X/S',
      'Jira',
      'TestRail',
      'Confluence',
    ],
  },
  {
    period: '09.2023 — 03.2024',
    role: 'Programming & Game Development Tutor',
    company: 'Kodland',
    logo: 'K',
    summary:
      'Remote technical education focused on introducing children and teenagers to programming and game creation.',
    responsibilities: [
      'Delivered online lessons using Scratch, Python and Roblox Studio.',
      'Evaluated student progress and adapted teaching methods to individual needs.',
      'Reviewed learning materials and supported the development of teaching methods.',
    ],
    tags: [
      'Python',
      'Scratch',
      'Roblox Studio',
      'Remote teaching',
    ],
  },
  {
    period: '11.2021 — 02.2024',
    role: 'QA Engineer',
    company: 'Carbon Studio / Iron VR',
    logo: 'CS',
    summary:
      'Quality assurance and validation of virtual reality applications across multiple consumer VR platforms.',
    responsibilities: [
      'Tested VR applications using documentation and defined test scenarios.',
      'Worked with platforms including Meta Quest, PlayStation VR2 and HTC Vive.',
      'Reported and documented defects using Jira and Redmine.',
      'Collaborated with developers, producers and game designers.',
    ],
    tags: [
      'VR',
      'Meta Quest',
      'PlayStation VR2',
      'HTC Vive',
      'Jira',
      'Redmine',
    ],
  },
  {
    period: '09.2020 — 10.2021',
    role: 'Functional QA Tester',
    company: 'Keywords Studios',
    logo: 'KS',
    summary:
      'Functional quality assurance for AAA titles released across PC, PlayStation and Xbox platforms.',
    responsibilities: [
      'Verified game quality against supplied documentation and requirements.',
      'Documented functional defects using Jira.',
      'Executed structured test plans and test cases using TestRail.',
    ],
    tags: [
      'AAA games',
      'PC',
      'PlayStation',
      'Xbox',
      'Jira',
      'TestRail',
    ],
  },
];
---

<BaseLayout
  title="Experience"
  description="Professional experience of Bartosz Girzecki across software quality assurance, game development and technical education."
>
  <section
    class="experience-hero"
    aria-labelledby="experience-title"
  >
    <h1 id="experience-title">Experience</h1>

    <p class="experience-lead">
      Nearly six years of professional experience across software
      quality assurance, multi-platform game development, virtual
      reality and technical education.
    </p>
  </section>

  <a
    class="timeline-cue"
    href="#timeline-end"
    data-timeline-cue
    aria-label="Start from the beginning of my professional timeline"
  >
    <span class="timeline-cue-label">
      Start from the beginning
    </span>

    <span
      class="timeline-cue-arrow"
      aria-hidden="true"
    >
      ↓
    </span>
  </a>

  <section
    class="timeline"
    data-timeline
    aria-label="Professional experience timeline"
  >
    <div
      class="timeline-line"
      data-timeline-line
      aria-hidden="true"
    ></div>

    {
      experience.map((item, index) => (
        <article
          class:list={[
            'timeline-item',
            index % 2 === 0
              ? 'timeline-left'
              : 'timeline-right',
          ]}
          data-timeline-item
          data-last-item={
            index === experience.length - 1
              ? 'true'
              : undefined
          }
        >
          <div
            class="timeline-node"
            aria-hidden="true"
          >
            <span></span>
          </div>

          <div
            class="company-logo"
            aria-label={`${item.company} logo placeholder`}
          >
            {item.logo}
          </div>

          <div class="experience-card">
            <p class="employment-period">
              {item.period}
            </p>

            <div class="card-heading">
              <h2>{item.role}</h2>

              <p class="company-name">
                {item.company}
              </p>
            </div>

            <p class="role-summary">
              {item.summary}
            </p>

            <ul class="responsibility-list">
              {
                item.responsibilities.map(
                  (responsibility) => (
                    <li>{responsibility}</li>
                  )
                )
              }
            </ul>

            <ul
              class="tag-list"
              aria-label={`Technologies and areas used at ${item.company}`}
            >
              {
                item.tags.map((tag) => (
                  <li>{tag}</li>
                ))
              }
            </ul>
          </div>
        </article>
      ))
    }
  </section>

  <div
    id="timeline-end"
    class="timeline-end"
    aria-hidden="true"
  ></div>
</BaseLayout>

<script>
  const timelineItems = document.querySelectorAll(
    '[data-timeline-item]'
  );

  if ('IntersectionObserver' in window) {
    const itemObserver = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) {
            return;
          }

          entry.target.classList.add('is-visible');
          itemObserver.unobserve(entry.target);
        });
      },
      {
        threshold: 0.14,
        rootMargin: '0px 0px -6% 0px',
      }
    );

    timelineItems.forEach((item) => {
      itemObserver.observe(item);
    });
  } else {
    timelineItems.forEach((item) => {
      item.classList.add('is-visible');
    });
  }

  const timelineCue = document.querySelector(
    '[data-timeline-cue]'
  );

  const timeline = document.querySelector(
    '[data-timeline]'
  );

  const timelineLine = document.querySelector(
    '[data-timeline-line]'
  );

  const lastCardHeading = document.querySelector(
    '[data-last-item="true"] .card-heading'
  );

  const oneSideLayout = window.matchMedia(
    '(max-width: 1000px)'
  );

  const compactCue = window.matchMedia(
    '(max-width: 1000px)'
  );

  const positionTimelineCue = () => {
    if (
      !(timelineCue instanceof HTMLAnchorElement) ||
      !(timeline instanceof HTMLElement) ||
      !(timelineLine instanceof HTMLElement)
    ) {
      return;
    }

    const lineRect =
      timelineLine.getBoundingClientRect();

    const lineCenter =
      lineRect.left + lineRect.width / 2;

    timelineCue.style.left = `${lineCenter}px`;

    if (compactCue.matches) {
      timelineCue.style.top = '50%';
      return;
    }

    const timelineDocumentTop =
      timeline.getBoundingClientRect().top +
      window.scrollY;

    const preferredPosition =
      timelineDocumentTop - 24;

    const minimumPosition = 112;
    const maximumPosition =
      window.innerHeight - 64;

    const fixedPosition = Math.min(
      Math.max(
        preferredPosition,
        minimumPosition
      ),
      maximumPosition
    );

    timelineCue.style.top = `${fixedPosition}px`;
  };

  const updateTimelineCueVisibility = () => {
    if (
      !(timelineCue instanceof HTMLAnchorElement) ||
      !(lastCardHeading instanceof HTMLElement)
    ) {
      return;
    }

    const lastHeadingPosition =
      lastCardHeading.getBoundingClientRect();

    const shouldHide =
      lastHeadingPosition.bottom <=
      window.innerHeight - 24;

    timelineCue.classList.toggle(
      'is-hidden',
      shouldHide
    );

    timelineCue.tabIndex = shouldHide ? -1 : 0;

    timelineCue.setAttribute(
      'aria-hidden',
      String(shouldHide)
    );
  };

  positionTimelineCue();
  updateTimelineCueVisibility();

  window.addEventListener(
    'scroll',
    updateTimelineCueVisibility,
    {
      passive: true,
    }
  );

  window.addEventListener(
    'resize',
    () => {
      positionTimelineCue();
      updateTimelineCueVisibility();
    }
  );

  oneSideLayout.addEventListener(
    'change',
    positionTimelineCue
  );

  compactCue.addEventListener(
    'change',
    positionTimelineCue
  );
</script>

<style>
  :global(.page-content) {
    padding-top: clamp(2rem, 4vw, 3.75rem);
  }

  .experience-hero {
    width: min(80vw, 88rem);
    margin-inline: auto;
    display: grid;
    grid-template-columns:
      minmax(18rem, 4fr)
      minmax(24rem, 6fr);
    align-items: center;
    gap: clamp(2rem, 5vw, 5rem);
  }

  .experience-hero h1 {
    width: fit-content;
    margin: 0;
    padding:
      0.06em
      0.14em
      0.18em
      0.03em;
    display: inline-block;
    overflow: visible;
    color: transparent;
    background:
      linear-gradient(
        105deg,
        #ffffff 0%,
        #dbeafe 38%,
        var(--color-blue-light) 74%,
        var(--color-blue-bright) 100%
      );
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    font-size: clamp(3.5rem, 7vw, 6.25rem);
    line-height: 1.12;
    white-space: nowrap;
  }

  .experience-lead {
    max-width: 760px;
    margin: 0;
    color: var(--color-text-secondary);
    font-size: clamp(1rem, 1.5vw, 1.17rem);
    line-height: 1.7;
  }

  .timeline-cue {
    position: fixed;
    z-index: 45;
    width: max-content;
    max-width: 10rem;
    min-height: 2.8rem;
    padding: 0.65rem 0.85rem;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 0.6rem;
    border: 1px solid var(--color-border-strong);
    border-radius: 999px;
    color: var(--color-text);
    background:
      linear-gradient(
        135deg,
        rgba(18, 27, 40, 0.96),
        rgba(8, 12, 19, 0.92)
      );
    box-shadow:
      0 1rem 3rem rgba(0, 0, 0, 0.42),
      0 0 2rem rgba(37, 99, 235, 0.14);
    -webkit-backdrop-filter: blur(16px);
    backdrop-filter: blur(16px);
    font-family: var(--font-mono);
    font-size: 0.68rem;
    line-height: 1.3;
    letter-spacing: 0.025em;
    text-align: center;
    text-decoration: none;
    opacity: 1;
    transform: translate(-50%, -50%);
    transition:
      opacity var(--transition-standard),
      border-color var(--transition-fast),
      background-color var(--transition-fast),
      transform var(--transition-standard);
  }

  .timeline-cue:hover,
  .timeline-cue:focus-visible {
    border-color: var(--color-blue-bright);
    background: var(--color-surface-strong);
    transform:
      translate(-50%, -50%)
      scale(1.045);
  }

  .timeline-cue.is-hidden {
    pointer-events: none;
    opacity: 0;
    transform:
      translate(-50%, calc(-50% + 0.7rem))
      scale(0.96);
  }

  .timeline-cue-arrow {
    flex: 0 0 auto;
    color: var(--color-blue-bright);
    font-size: 0.95rem;
    animation:
      timeline-cue-bounce
      1.6s
      ease-in-out
      infinite;
  }

  .timeline {
    --timeline-gap: clamp(6.25rem, 7vw, 7.25rem);

    position: relative;
    width: min(80vw, 88rem);
    margin:
      clamp(6rem, 12vw, 10rem)
      auto
      0;
    padding-bottom: clamp(3rem, 8vw, 7rem);
  }

  .timeline-line {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 50%;
    width: 1px;
    background:
      linear-gradient(
        to bottom,
        transparent,
        var(--color-blue-light) 4rem,
        rgba(96, 165, 250, 0.38)
          calc(100% - 4rem),
        transparent
      );
    transform: translateX(-50%);
  }

  .timeline-item {
    position: relative;
    width:
      calc(50% - var(--timeline-gap));
    margin-bottom:
      clamp(1.5rem, 2.5vw, 2.25rem);
    opacity: 0;
    transition:
      opacity 700ms
        cubic-bezier(0.22, 1, 0.36, 1),
      transform 700ms
        cubic-bezier(0.22, 1, 0.36, 1);
  }

  .timeline-item:last-child {
    margin-bottom: 0;
  }

  .timeline-left {
    margin-right: auto;
    transform: translate(-2rem, 2rem);
  }

  .timeline-right {
    margin-left: auto;
    transform: translate(2rem, 2rem);
  }

  .timeline-item.is-visible {
    opacity: 1;
    transform: translate(0, 0);
  }

  .timeline-node {
    position: absolute;
    top: 3.2rem;
    width: var(--timeline-gap);
    height: 1px;
    background:
      linear-gradient(
        90deg,
        rgba(96, 165, 250, 0.15),
        rgba(96, 165, 250, 0.75)
      );
  }

  .timeline-left .timeline-node {
    right:
      calc(-1 * var(--timeline-gap));
  }

  .timeline-right .timeline-node {
    left:
      calc(-1 * var(--timeline-gap));
    transform: scaleX(-1);
  }

  .timeline-node span {
    position: absolute;
    top: 50%;
    right: -0.38rem;
    width: 0.78rem;
    height: 0.78rem;
    border: 2px solid var(--color-blue-light);
    border-radius: 50%;
    background: var(--color-bg);
    box-shadow:
      0 0 0 0.35rem rgba(59, 130, 246, 0.1),
      0 0 1.5rem rgba(96, 165, 250, 0.48);
    transform: translateY(-50%);
    transition:
      background-color var(--transition-standard),
      box-shadow var(--transition-standard),
      transform var(--transition-standard);
  }

  .company-logo {
    position: absolute;
    top: -3rem;
    z-index: 4;
    width: 7rem;
    height: 7rem;
    display: grid;
    place-items: center;
    border: 2px solid
      rgba(125, 211, 252, 0.42);
    border-radius: 50%;
    color: var(--color-blue-bright);
    background:
      radial-gradient(
        circle at 35% 30%,
        rgba(96, 165, 250, 0.24),
        transparent 45%
      ),
      linear-gradient(
        145deg,
        var(--color-surface-strong),
        var(--color-bg-soft)
      );
    box-shadow:
      0 0 0 0.45rem
        rgba(59, 130, 246, 0.055),
      0 1rem 2.5rem rgba(0, 0, 0, 0.4),
      0 0 2.5rem rgba(37, 99, 235, 0.16);
    font-family: var(--font-mono);
    font-size: 1.05rem;
    font-weight: 650;
    letter-spacing: -0.03em;
    transition:
      border-color var(--transition-standard),
      box-shadow var(--transition-standard),
      transform var(--transition-standard);
  }

  .timeline-left .company-logo {
    left: -3rem;
  }

  .timeline-right .company-logo {
    right: -3rem;
  }

  .experience-card {
    position: relative;
    padding:
      clamp(3.75rem, 4.5vw, 4.25rem)
      clamp(1.6rem, 3vw, 2.25rem)
      clamp(1.6rem, 3vw, 2.25rem);
    overflow: hidden;
    border: 1px solid var(--color-border);
    border-radius: var(--radius-large);
    background:
      linear-gradient(
        145deg,
        rgba(18, 27, 40, 0.9),
        rgba(9, 14, 22, 0.82)
      );
    box-shadow: var(--shadow-card);
    transition:
      border-color var(--transition-standard),
      box-shadow var(--transition-standard),
      transform var(--transition-standard);
  }

  .experience-card::before {
    position: absolute;
    top: -8rem;
    width: 15rem;
    height: 15rem;
    content: "";
    border-radius: 50%;
    background: rgba(37, 99, 235, 0.13);
    filter: blur(3rem);
    opacity: 0;
    transition: opacity var(--transition-standard);
  }

  .timeline-left .experience-card::before {
    left: -8rem;
  }

  .timeline-right .experience-card::before {
    right: -8rem;
  }

  .timeline-left:hover .experience-card,
  .timeline-left:focus-within .experience-card {
    border-color: var(--color-border-strong);
    box-shadow:
      0 30px 90px rgba(0, 0, 0, 0.38),
      0 0 3rem rgba(37, 99, 235, 0.1);
    transform:
      translateX(0.65rem)
      scale(1.012);
  }

  .timeline-right:hover .experience-card,
  .timeline-right:focus-within .experience-card {
    border-color: var(--color-border-strong);
    box-shadow:
      0 30px 90px rgba(0, 0, 0, 0.38),
      0 0 3rem rgba(37, 99, 235, 0.1);
    transform:
      translateX(-0.65rem)
      scale(1.012);
  }

  .timeline-item:hover .experience-card::before,
  .timeline-item:focus-within
    .experience-card::before {
    opacity: 1;
  }

  .timeline-item:hover .company-logo,
  .timeline-item:focus-within .company-logo {
    border-color: var(--color-blue-bright);
    box-shadow:
      0 0 0 0.55rem
        rgba(59, 130, 246, 0.08),
      0 1.25rem 3rem
        rgba(0, 0, 0, 0.45),
      0 0 3rem
        rgba(96, 165, 250, 0.3);
    transform: scale(1.07);
  }

  .timeline-item:hover .timeline-node span,
  .timeline-item:focus-within
    .timeline-node span {
    background: var(--color-blue-light);
    box-shadow:
      0 0 0 0.45rem
        rgba(59, 130, 246, 0.13),
      0 0 2.2rem
        rgba(96, 165, 250, 0.75);
    transform:
      translateY(-50%)
      scale(1.18);
  }

  .employment-period {
    position: absolute;
    top: 1.3rem;
    z-index: 2;
    margin: 0;
    color: var(--color-blue-bright);
    font-family: var(--font-mono);
    font-size: 0.74rem;
    font-weight: 550;
    letter-spacing: 0.06em;
    text-transform: uppercase;
  }

  .timeline-left .employment-period {
    right: 1.5rem;
    left: auto;
    text-align: right;
  }

  .timeline-right .employment-period {
    right: auto;
    left: 1.5rem;
    text-align: left;
  }

  .card-heading {
    position: relative;
    z-index: 1;
    margin-top: 0.5rem;
  }

  .timeline-right .card-heading {
    text-align: right;
  }

  .card-heading h2 {
    font-size:
      clamp(1.75rem, 3.1vw, 2.6rem);
    line-height: 1.05;
  }

  .company-name {
    margin: 0.65rem 0 0;
    color: var(--color-blue-light);
    font-size: 1.05rem;
    font-weight: 570;
  }

  .role-summary {
    position: relative;
    z-index: 1;
    margin: 1.4rem 0 0;
    color: var(--color-text-secondary);
    font-size: 1rem;
    line-height: 1.65;
  }

  .responsibility-list {
    position: relative;
    z-index: 1;
    margin: 1.4rem 0 0;
    padding: 0;
    display: grid;
    grid-template-columns:
      repeat(2, minmax(0, 1fr));
    gap: 0.75rem 1.35rem;
    list-style: none;
  }

  .responsibility-list li {
    position: relative;
    padding-left: 1.2rem;
    color: var(--color-text-secondary);
    font-size: 0.88rem;
    line-height: 1.55;
  }

  .responsibility-list li::before {
    position: absolute;
    top: 0.68em;
    left: 0;
    width: 0.36rem;
    height: 0.36rem;
    content: "";
    border-radius: 50%;
    background: var(--color-blue-light);
    box-shadow:
      0 0 0.8rem
        rgba(96, 165, 250, 0.55);
  }

  .tag-list {
    position: relative;
    z-index: 1;
    margin: 1.6rem 0 0;
    padding: 0;
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    list-style: none;
  }

  .timeline-right .tag-list {
    justify-content: flex-end;
  }

  .tag-list li {
    padding: 0.45rem 0.65rem;
    border: 1px solid var(--color-border);
    border-radius: 999px;
    color: var(--color-text-muted);
    background: rgba(7, 9, 13, 0.35);
    font-family: var(--font-mono);
    font-size: 0.66rem;
    line-height: 1;
  }

  .timeline-end {
    height: 1px;
    scroll-margin-top: 7rem;
  }

  @keyframes timeline-cue-bounce {
    0%,
    100% {
      transform: translateY(-0.12rem);
    }

    50% {
      transform: translateY(0.22rem);
    }
  }

  @media (max-width: 1240px) {
    .timeline {
      --timeline-gap: 6rem;
    }

    .responsibility-list {
      grid-template-columns: 1fr;
    }
  }

  @media (max-width: 1000px) {
    .timeline-cue {
      width: 2.55rem;
      min-width: 2.55rem;
      max-width: 2.55rem;
      height: 2.55rem;
      min-height: 2.55rem;
      padding: 0;
      gap: 0;
      border-radius: 50%;
    }

    .timeline-cue-label {
      display: none;
    }

    .timeline-cue-arrow {
      font-size: 1.15rem;
    }

    .timeline {
      --mobile-axis-offset: 1.15rem;
      --mobile-card-offset: 5.25rem;

      width: min(80vw, 50rem);
      margin:
        clamp(6rem, 12vw, 9rem)
        auto
        0;
      padding-left: 0;
    }

    .timeline-line {
      left: var(--mobile-axis-offset);
      transform: none;
    }

    .timeline-item,
    .timeline-left,
    .timeline-right {
      width:
        calc(100% - var(--mobile-card-offset));
      margin-right: 0;
      margin-left: var(--mobile-card-offset);
      margin-bottom:
        clamp(4.5rem, 9vw, 6.5rem);
      transform: translate(1.25rem, 2rem);
    }

    .timeline-item.is-visible {
      transform: translate(0, 0);
    }

    .timeline-node,
    .timeline-left .timeline-node,
    .timeline-right .timeline-node {
      top: 3.2rem;
      right: auto;
      left:
        calc(
          -1 *
          (
            var(--mobile-card-offset) -
            var(--mobile-axis-offset)
          )
        );
      width:
        calc(
          var(--mobile-card-offset) -
          var(--mobile-axis-offset)
        );
      transform: none;
    }

    .timeline-left .company-logo,
    .timeline-right .company-logo {
      top: -2.5rem;
      right: -1.15rem;
      left: auto;
      width: 5.5rem;
      height: 5.5rem;
      font-size: 0.9rem;
    }

    .experience-card {
      padding:
        3.25rem
        clamp(1.4rem, 4vw, 2rem)
        clamp(1.4rem, 4vw, 2rem);
    }

    .timeline-left .employment-period,
    .timeline-right .employment-period {
      top: 1.15rem;
      right: auto;
      left: 1.4rem;
      text-align: left;
    }

    .timeline-left .card-heading,
    .timeline-right .card-heading {
      text-align: left;
    }

    .timeline-left .tag-list,
    .timeline-right .tag-list {
      justify-content: flex-start;
    }

    .timeline-left:hover .experience-card,
    .timeline-left:focus-within
      .experience-card,
    .timeline-right:hover .experience-card,
    .timeline-right:focus-within
      .experience-card {
      transform:
        translateX(0.3rem)
        scale(1.008);
    }
  }

  @media (max-width: 900px) {
    .experience-hero {
      grid-template-columns: 1fr;
      gap: 1.15rem;
      text-align: center;
    }

    .experience-hero h1,
    .experience-lead {
      margin-inline: auto;
    }
  }

  @media (max-width: 640px) {
    .experience-hero,
    .timeline {
      width: 80vw;
    }

    .timeline {
      --mobile-axis-offset: 0.55rem;
      --mobile-card-offset: 3.25rem;
    }

    .timeline-item,
    .timeline-left,
    .timeline-right {
      margin-bottom:
        clamp(7rem, 20vw, 9rem);
    }

    .timeline-cue {
      width: 2.55rem;
      min-width: 2.55rem;
      max-width: 2.55rem;
      height: 2.55rem;
      min-height: 2.55rem;
      padding: 0;
      gap: 0;
      border-radius: 50%;
    }

    .timeline-cue-label {
      display: none;
    }

    .timeline-cue-arrow {
      font-size: 1.15rem;
    }

    .timeline-left .company-logo,
    .timeline-right .company-logo {
      top: -2rem;
      right: -0.7rem;
      width: 4.75rem;
      height: 4.75rem;
      font-size: 0.8rem;
    }

    .experience-card {
      padding:
        3.1rem
        1.15rem
        1.25rem;
      border-radius: var(--radius-medium);
    }

    .card-heading h2 {
      font-size:
        clamp(1.55rem, 8vw, 2.1rem);
    }

    .employment-period {
      max-width: calc(100% - 6rem);
      padding-right: 0;
      font-size: 0.65rem;
    }
  }

  @media (max-width: 420px) {
    .timeline {
      --mobile-card-offset: 2.8rem;
    }

    .role-summary {
      font-size: 0.94rem;
    }

    .responsibility-list li {
      font-size: 0.84rem;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .timeline-cue-arrow {
      animation: none;
    }

    .timeline-item {
      opacity: 1;
      transform: none;
      transition: none;
    }

    .experience-card,
    .company-logo,
    .timeline-node span {
      transition: none;
    }
  }
</style>

'@

$skillsContent = @'
---
import BaseLayout from '../layouts/BaseLayout.astro';

const skillColumns = [
  {
    number: '01',
    title: 'Quality Engineering',
    level: 'Professional experience',
    description:
      'Nearly six years of commercial software quality experience across PC, consoles and virtual reality projects.',
    groups: [
      {
        title: 'Testing practices',
        skills: [
          'Functional Testing',
          'Regression Testing',
          'Exploratory Testing',
          'Smoke & Sanity Testing',
          'Test Case Design',
          'Defect Verification',
        ],
      },
      {
        title: 'Platforms & delivery',
        skills: [
          'PC Testing',
          'PlayStation Testing',
          'Xbox Testing',
          'VR Testing',
          'Certification-focused Testing',
          'Test Documentation',
          'Cross-functional QA',
        ],
      },
    ],
  },
  {
    number: '02',
    title: 'Automation & API',
    level: 'Active development',
    description:
      'The current expansion of my QA background through Python-based automation, API validation and continuous integration.',
    groups: [
      {
        title: 'Test automation',
        skills: [
          'Python',
          'pytest',
          'Playwright',
          'Selenium',
          'Fixtures',
          'Test Architecture',
          'Reporting & Artifacts',
        ],
      },
      {
        title: 'API & CI',
        skills: [
          'API Testing',
          'Postman',
          'REST API Validation',
          'GitHub Actions',
          'Jenkins Fundamentals',
          'CI Test Execution',
        ],
      },
    ],
  },
  {
    number: '03',
    title: 'Software Engineering',
    level: 'Development foundations',
    description:
      'Programming, backend, database and web foundations supporting broader technical projects and system-level understanding.',
    groups: [
      {
        title: 'Programming & backend',
        skills: [
          'C++',
          'Python',
          'JavaScript',
          'Object-Oriented Programming',
          'REST APIs',
          'Flask',
          'Django',
          'Debugging',
        ],
      },
      {
        title: 'Data & web',
        skills: [
          'SQL',
          'PostgreSQL',
          'Relational Databases',
          'JSON',
          'HTTP Fundamentals',
          'Client–Server Architecture',
          'HTML5',
          'CSS3',
        ],
      },
    ],
  },
  {
    number: '04',
    title: 'Delivery & Game Development',
    level: 'Professional use and creative direction',
    description:
      'Professional workflow tools combined with a long-term creative direction centred on game design and development.',
    groups: [
      {
        title: 'Tools & workflow',
        skills: [
          'Git & GitHub',
          'Jira',
          'TestRail',
          'Confluence',
          'Redmine',
          'Visual Studio',
          'PyCharm',
          'Branch-based Workflow',
          'Conventional Commits',
          'Technical Documentation',
        ],
      },
      {
        title: 'Game design & development',
        skills: [
          'Game Design',
          'Gameplay Systems',
          'Quest & Content Design',
          'Player Experience Analysis',
          'Design Documentation',
          'Prototyping',
          'Gameplay Logic',
          'C++ Game Development',
        ],
      },
    ],
  },
];
---

<BaseLayout
  title="Skills"
  description="Technical capabilities of Bartosz Girzecki across software quality, test automation, programming, backend development and game design."
>
  <section
    class="skills-hero"
    aria-labelledby="skills-title"
  >
    <h1 id="skills-title">Skills</h1>

    <p class="skills-lead">
      Professional software quality experience combined with active
      development in test automation, software engineering and a
      long-term creative direction in game design.
    </p>
  </section>

  <section
    class="skills-grid"
    aria-label="Technical skill categories"
  >
    {
      skillColumns.map((column, index) => (
        <article
          class="skill-column"
          style={`--reveal-delay: ${100 + index * 140}ms;`}
        >
          <header class="column-header">
            <div class="column-meta">
              <span class="column-level">
                {column.level}
              </span>
            </div>

            <h2>{column.title}</h2>

            <p class="column-description">
              {column.description}
            </p>
          </header>

          <div class="skill-groups">
            {
              column.groups.map((group) => (
                <section class="skill-group">
                  <h3>{group.title}</h3>

                  <ul>
                    {
                      group.skills.map((skill) => (
                        <li>{skill}</li>
                      ))
                    }
                  </ul>
                </section>
              ))
            }
          </div>
        </article>
      ))
    }
  </section>
</BaseLayout>

<style>
  :global(.page-content) {
    padding-top: clamp(2rem, 4vw, 3.75rem);
    padding-bottom: clamp(5rem, 10vw, 9rem);
  }

  .skills-hero {
    width: min(80vw, 88rem);
    margin-inline: auto;
    display: grid;
    grid-template-columns:
      minmax(18rem, 4fr)
      minmax(24rem, 6fr);
    align-items: center;
    gap: clamp(2rem, 5vw, 5rem);
    text-align: left;
  }

  .skills-hero h1 {
    width: fit-content;
    margin: 0;
    padding:
      0.06em
      0.14em
      0.18em
      0.03em;
    display: inline-block;
    overflow: visible;
    color: transparent;
    background:
      linear-gradient(
        105deg,
        #ffffff 0%,
        #dbeafe 38%,
        var(--color-blue-light) 74%,
        var(--color-blue-bright) 100%
      );
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    font-size: clamp(3.5rem, 7vw, 6.25rem);
    line-height: 1.12;
    white-space: nowrap;
  }

  .skills-lead {
    max-width: 720px;
    margin: 0;
    color: var(--color-text-secondary);
    font-size: clamp(0.98rem, 1.45vw, 1.14rem);
    line-height: 1.65;
  }

  .skills-grid {
    width: min(80vw, 88rem);
    margin:
      clamp(2.75rem, 5vw, 4.5rem)
      auto
      0;
    display: grid;
    grid-template-columns:
      repeat(4, minmax(0, 1fr));
    align-items: start;
    gap: clamp(0.85rem, 1.6vw, 1.5rem);
  }

  .skill-column {
    position: relative;
    min-width: 0;
    padding:
      clamp(1.4rem, 2vw, 1.85rem)
      clamp(1.2rem, 1.8vw, 1.65rem)
      clamp(1.6rem, 2.2vw, 2rem);
    overflow: hidden;
    border: 1px solid var(--color-border);
    border-radius: var(--radius-large);
    background:
      linear-gradient(
        150deg,
        rgba(18, 27, 40, 0.92),
        rgba(9, 14, 22, 0.84)
      );
    box-shadow: var(--shadow-card);
    opacity: 1;
    transform:
      translateY(0)
      scale(1);
    animation:
      reveal-skill-column
      720ms
      cubic-bezier(0.22, 1, 0.36, 1)
      backwards;
    animation-delay: var(--reveal-delay);
    transition:
      border-color var(--transition-standard),
      box-shadow var(--transition-standard),
      transform var(--transition-standard);
  }

  .skill-column::before {
    position: absolute;
    top: -9rem;
    right: -9rem;
    width: 18rem;
    height: 18rem;
    content: "";
    pointer-events: none;
    border-radius: 50%;
    background: rgba(37, 99, 235, 0.16);
    filter: blur(3.5rem);
    opacity: 0.18;
    transition:
      opacity var(--transition-standard),
      transform var(--transition-standard);
  }

  .skill-column::after {
    position: absolute;
    inset: 0;
    content: "";
    pointer-events: none;
    background:
      linear-gradient(
        120deg,
        transparent 25%,
        rgba(125, 211, 252, 0.05) 50%,
        transparent 75%
      );
    opacity: 0;
    transform: translateX(-60%);
    transition:
      opacity var(--transition-standard),
      transform 750ms cubic-bezier(0.22, 1, 0.36, 1);
  }

  .skill-column:hover,
  .skill-column:focus-within {
    z-index: 3;
    border-color: var(--color-border-strong);
    box-shadow:
      0 34px 100px rgba(0, 0, 0, 0.42),
      0 0 3.5rem rgba(37, 99, 235, 0.14);
    transform:
      translateY(-0.5rem)
      scale(1.018);
  }

  .skill-column:hover::before,
  .skill-column:focus-within::before {
    opacity: 0.8;
    transform: scale(1.18);
  }

  .skill-column:hover::after,
  .skill-column:focus-within::after {
    opacity: 1;
    transform: translateX(60%);
  }

  .column-header,
  .skill-groups {
    position: relative;
    z-index: 1;
  }

  .column-meta {
    min-height: 0;
  }

  .column-level {
    display: block;
    color: var(--color-text-muted);
    font-family: var(--font-mono);
    font-size: 0.61rem;
    font-weight: 560;
    letter-spacing: 0.055em;
    line-height: 1.45;
    text-align: left;
    text-transform: uppercase;
  }

  .column-header h2 {
    width: fit-content;
    margin: 0.85rem 0 0;
    color: var(--color-text);
    background:
      linear-gradient(
        105deg,
        #ffffff 0%,
        #dbeafe 42%,
        var(--color-blue-light) 100%
      );
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: var(--color-text);
    font-size: clamp(1.45rem, 2vw, 2rem);
    font-weight: 590;
    line-height: 1.08;
    letter-spacing: -0.045em;
    transition:
      color var(--transition-standard),
      -webkit-text-fill-color var(--transition-standard);
  }

  .skill-column:hover .column-header h2,
  .skill-column:focus-within .column-header h2 {
    color: transparent;
    -webkit-text-fill-color: transparent;
  }

  .column-description {
    margin: 1rem 0 0;
    color: var(--color-text-secondary);
    font-size: clamp(0.8rem, 0.85vw, 0.9rem);
    line-height: 1.65;
  }

  .skill-groups {
    margin-top: 1.5rem;
    padding-top: 1.5rem;
    display: grid;
    gap: 1.8rem;
    border-top: 1px solid var(--color-border);
  }

  .skill-group h3 {
    margin: 0 0 0.85rem;
    color: var(--color-blue-light);
    font-family: var(--font-mono);
    font-size: 0.64rem;
    font-weight: 570;
    letter-spacing: 0.075em;
    line-height: 1.4;
    text-transform: uppercase;
  }

  .skill-group ul {
    margin: 0;
    padding: 0;
    display: flex;
    flex-wrap: wrap;
    gap: 0.48rem;
    list-style: none;
  }

  .skill-group li {
    padding: 0.48rem 0.62rem;
    border: 1px solid var(--color-border);
    border-radius: 999px;
    color: var(--color-text-secondary);
    background: rgba(7, 9, 13, 0.38);
    font-size: clamp(0.68rem, 0.72vw, 0.75rem);
    line-height: 1.18;
    transition:
      color var(--transition-fast),
      border-color var(--transition-fast),
      background-color var(--transition-fast),
      transform var(--transition-standard);
  }

  .skill-column:hover .skill-group li,
  .skill-column:focus-within .skill-group li {
    border-color: rgba(96, 165, 250, 0.24);
    background: rgba(37, 99, 235, 0.055);
  }

  .skill-group li:hover {
    color: var(--color-text);
    border-color: var(--color-blue-light);
    transform: translateY(-0.12rem);
  }

  @keyframes reveal-skill-column {
    from {
      opacity: 0;
      transform:
        translateY(2rem)
        scale(0.985);
    }

    to {
      opacity: 1;
      transform:
        translateY(0)
        scale(1);
    }
  }

  @media (max-width: 1180px) {
    .skills-grid {
      grid-template-columns: 1fr;
      gap: clamp(2rem, 5vw, 3rem);
    }

    .skill-column {
      min-height: auto;
      padding:
        clamp(1.6rem, 4vw, 2.2rem);
    }

    .column-meta {
      min-height: auto;
    }

    .column-header h2 {
      min-height: auto;
      font-size: clamp(1.8rem, 5vw, 2.6rem);
    }

    .column-description {
      min-height: auto;
      max-width: 760px;
      font-size: 0.96rem;
    }

    .skill-groups {
      grid-template-columns:
        repeat(2, minmax(0, 1fr));
      gap: clamp(1.5rem, 4vw, 3rem);
    }
  }

  @media (max-width: 860px) {
    .skills-hero {
      grid-template-columns: 1fr;
      gap: 1.15rem;
      text-align: center;
    }

    .skills-hero h1,
    .skills-lead {
      margin-inline: auto;
    }

    .skills-grid {
      margin-top: 3.5rem;
    }
  }

  @media (max-width: 680px) {
    .skills-hero,
    .skills-grid {
      width: 80vw;
    }

    .skill-column {
      border-radius: var(--radius-medium);
    }

    .column-meta {
      align-items: flex-start;
      flex-direction: column;
      gap: 0.45rem;
    }

    .column-level {
      max-width: none;
      text-align: left;
    }

    .skill-groups {
      grid-template-columns: 1fr;
    }

    .skill-column:hover,
    .skill-column:focus-within {
      transform:
        translateY(-0.25rem)
        scale(1.008);
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .skill-column {
      opacity: 1;
      transform: none;
      animation: none;
      transition: none;
    }

    .skill-column::before,
    .skill-column::after,
    .column-header h2,
    .skill-group li {
      transition: none;
    }
  }
</style>

'@

[System.IO.File]::WriteAllText(
    (Join-Path $PWD 'src\pages\index.astro'),
    $indexContent + [Environment]::NewLine,
    $utf8NoBom
)

[System.IO.File]::WriteAllText(
    (Join-Path $PWD 'src\pages\experience.astro'),
    $experienceContent + [Environment]::NewLine,
    $utf8NoBom
)

[System.IO.File]::WriteAllText(
    (Join-Path $PWD 'src\pages\skills.astro'),
    $skillsContent + [Environment]::NewLine,
    $utf8NoBom
)
