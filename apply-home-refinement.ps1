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
    <div class="portrait-frame">
      <div class="portrait-placeholder">
        <span>Professional photo</span>
      </div>
    </div>

    <div class="intro-copy">
      <div class="intro-heading">
        <h1 id="home-title">
          Hi, I'm <span>Bartosz Girzecki.</span>
        </h1>
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
    width: 60vw;
    margin-inline: auto;
    padding-top: clamp(0.5rem, 2vw, 1.5rem);
    display: grid;
    grid-template-columns:
      minmax(15rem, 2fr)
      minmax(0, 4fr);
    align-items: center;
    gap: clamp(2rem, 4vw, 5rem);
  }

  .portrait-frame {
    position: relative;
    width: min(100%, 275px);
    aspect-ratio: 1;
    padding: 0.4rem;
    justify-self: center;
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

  .intro-copy {
    min-width: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
  }

  .intro-heading {
    min-width: 0;
  }

  .intro-heading h1 {
    margin: 0;
    font-size: clamp(2.6rem, 3.9vw, 4.6rem);
    line-height: 1;
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
    width: 100%;
    max-width: 780px;
    margin: clamp(2rem, 3.5vw, 3.25rem) auto 0;
    text-align: center;
  }

  .intro-description p {
    margin: 0;
    color: var(--color-text-secondary);
    font-size: clamp(1rem, 1.35vw, 1.16rem);
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
    width: 80vw;
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
      repeat(2, minmax(0, 1fr));
    align-items: center;
    justify-items: center;
    gap: clamp(2rem, 5vw, 5rem);
    text-align: center;
  }

  .navigation-heading h2 {
    max-width: 640px;
    margin: 0;
  }

  .navigation-heading > p {
    max-width: 600px;
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
    margin-top: -1px;
    padding: 1.6rem 1rem;
    display: flex;
    align-items: center;
    overflow: hidden;
    border-top: 1px solid var(--color-border);
    border-bottom: 1px solid var(--color-border);
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

  .section-link:first-child {
    margin-top: 0;
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
    justify-items: center;
    gap: clamp(2rem, 4vw, 4rem);
    text-align: center;
  }

  .section-content strong {
    width: fit-content;
    justify-self: center;
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
    max-width: 680px;
    justify-self: center;
    color: var(--color-text-muted);
    font-size: clamp(0.88rem, 1.05vw, 1rem);
    line-height: 1.65;
    text-align: center;
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
    .home-intro,
    .portfolio-navigation {
      opacity: 0;
      animation:
        home-reveal 700ms
        cubic-bezier(0.22, 1, 0.36, 1)
        forwards;
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

  @media (max-width: 1200px) {
    .home-intro {
      width: 80vw;
      grid-template-columns:
        minmax(180px, 230px)
        minmax(0, 1fr);
      gap: clamp(2rem, 5vw, 4rem);
    }

    .intro-heading h1 {
      font-size: clamp(2.5rem, 5.2vw, 3.8rem);
      white-space: normal;
    }
  }

  @media (max-width: 900px) {
    .navigation-heading {
      grid-template-columns: 1fr;
      gap: 1.25rem;
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
      white-space: normal;
    }
  }

  @media (max-width: 700px) {
    .home-intro,
    .portfolio-navigation {
      width: 80vw;
    }

    .home-intro {
      grid-template-columns: 1fr;
      align-items: center;
      gap: 2.75rem;
    }

    .portrait-frame {
      width: min(62vw, 240px);
    }

    .intro-heading h1 {
      font-size: clamp(3.1rem, 14vw, 4.8rem);
      white-space: normal;
    }

    .intro-description {
      margin-top: 2rem;
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

[System.IO.File]::WriteAllText(
    (Join-Path $PWD 'src\pages\index.astro'),
    $indexContent + [Environment]::NewLine,
    $utf8NoBom
)
