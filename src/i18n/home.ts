import type { Locale } from './common';

export const homeTranslations = {
  en: {
    metadata: {
      title: 'Home',
      description:
        'Technical portfolio of Bartosz Girzecki, presenting professional experience, technical projects and areas of continued development.',
    },

    profile: {
      alt: 'Portrait of Bartosz Girzecki',
      placeholder: 'Professional photo',
    },

    hero: {
      heading: 'Welcome, my name is',
      intro:
        '<strong>And this is my personal portfolio website.</strong> I’m a technical specialist with several years of professional experience in quality assurance, gained in the game development industry. Through that experience, supported by my personal strengths, I’ve developed a thoughtful, high-standard approach to product development, communication, collaboration, problem-solving, and quality. I’m currently expanding my skills in Python test automation, software engineering, and backend development, while continuing to develop my long-term interest in game design and game development.',
    },

    scrollCue: {
      about: 'Read more about me',
      portfolio: 'Explore my portfolio',
    },

    about: {
      title: 'About me',
      lead:
        'A more personal look at how I got here, what drives me today, and where I want to go next — beyond the roles, tools and technologies presented elsewhere in this portfolio.',

      chapters: [
        {
          title: 'How did I get here?',
          paragraphs: [
            'For a long time, I have been looking for a place where I could combine two seemingly different sides of my personality — the need to create with a logical and analytical way of thinking.',
            'Even when choosing secondary school, I naturally leaned towards science-oriented subjects. I graduated from Śląskie Techniczne Zakłady Naukowe as a Chemical Analysis Technician. I chose the school because of its strong reputation, recommendations from both teachers and my family, and because an analytical field seemed like a natural match for the way I think. After graduation, I initially decided to study Civil Engineering at the Silesian University of Technology. It did not take long, however, for me to realise that despite its technical nature, it was not a field in which I wanted to build my future.',
            'That was when I started seriously considering programming. It seemed to combine logic with the ability to create things, and somewhere in the back of my mind there was also the thought that perhaps one day it could help me fulfil one of my biggest ambitions — creating a game of my own.',
            'I started with Python and a six-month Python Backend Developer course at Coders Lab. The beginning was not easy, but once the pieces started falling into place, programming completely drew me in. Over time, I also realised that it was giving me something beyond technical skills. Concepts such as abstraction, relationships between different elements, and breaking complex problems into smaller parts gradually started influencing the way I looked at problems outside of code as well. Programming taught me not only to search for a solution, but also to ask why something works the way it does.',
            'After finishing the course, my original plan was to start working as a Python Backend Developer. Life had a slightly different idea. Through a friend, I heard about an opportunity to work in game testing and decided to give it a try. That is how I joined Keywords Studios and, somewhat unexpectedly, began my professional journey in QA and the game development industry.',
            'The following years at Keywords Studios, Carbon Studio and Anshar Studios gave me the opportunity to experience game development from very different perspectives — from large console projects and virtual reality to AA+ and indie productions. Working directly with programmers, designers and other development teams gradually made me look beyond simply asking <strong>whether something worked</strong>. I became increasingly interested in <strong>how it had been built and how I could create something similar myself</strong>.',
            'That was when I returned to programming more seriously, this time learning C++ and Unreal Engine while exploring game development and design in greater depth.',
            'Along the way, I also discovered that sharing knowledge gives me a great deal of satisfaction. Working as a programming and game development tutor allowed me to look at my own skills from a completely different perspective — understanding something yourself is one thing, but being able to explain it to another person in a way suited to their age, experience and way of thinking is another challenge entirely.',
            'Eventually, combining the two areas I had been developing in parallel became a natural next step — programming and several years of professional quality assurance experience. That is why I am currently developing towards test automation and the more technical side of QA.',
          ],
        },

        {
          title: 'Who am I?',
          paragraphs: [
            'I am naturally curious, and I find it difficult to ignore the question: <strong>“What happens if I do this?”</strong>',
            'In QA, that curiosity often leads me towards unusual scenarios and behaviours that nobody may have anticipated. Finding something unexpected gives me far more satisfaction than simply executing another obvious test case.',
            'I approach creation in much the same way. What fascinates me most is the moment when I can immerse myself in a world or system that still exists only in my imagination — thinking about how its different elements could interact, which ideas complement each other, which ones need to change, and how everything can eventually become something that no longer exists only in my head, but actually works.',
            'That is why the areas of game design that interest me most are systems and mechanics, quest and narrative design, and level design. At the same time, I try not to limit myself to only one discipline. I like to understand at least the fundamentals of all the different elements that make up a larger whole. Being versatile is more important to me than locking myself into a very narrow specialisation.',
            'I look at my own personality in a similar way. Many traits can be both strengths and weaknesses depending on the situation and their intensity. Perfectionism is a good example. I can spend a long time refining details, and I find it difficult to accept a solution that I am not satisfied with. It makes me care deeply about the quality of what I create, but I also know that sometimes I need to consciously tell myself, “this is good enough for now”, move forward, and return to the problem later.',
            'The same applies to persistence. When I cannot solve something, frustration usually comes first, followed by a very strong need to find the answer. I sometimes spend considerably more time on a problem than I originally intended, but the moment when everything finally starts working is one of the most satisfying parts of technical work for me.',
            'I also have a more reflective side. I often find myself analysing not only technical problems, but also my own behaviour, other people, or broader existential questions. I enjoy asking questions, breaking ideas apart and trying to reach my own conclusions — sometimes through logic, sometimes through experience, and sometimes simply by thinking about what I feel and why.',
            'Outside of work, fantasy in its many forms is probably the closest thing to home for me. I love games, particularly Action RPGs set in dark fantasy worlds — <em>The Witcher 3</em> has remained my favourite game for years. I also enjoy fantasy literature, especially worlds such as <em>The Lord of the Rings</em> and <em>The Witcher</em>, while manga and anime take up another significant part of my free time — with <em>One Piece</em> being the undisputed number one for me.',
            'I am also fascinated by new technologies and science, particularly anything connected with space. I appreciate good science communication, which is why Kurzgesagt is one of my favourite channels — both because of the subjects they explore and because of the creative and accessible way in which they explain complex ideas.',
            'Beyond that, I am a big fan of tattoos — my left arm is already covered by a sleeve and it is probably not going to end there — and I enjoy physical activity, even if my consistency in that department can sometimes be... variable.',
          ],
        },

        {
          title: 'Where am I heading?',
          paragraphs: [
            'I am not interested in simply finding “a good job”. I want to build a professional life in which getting up in the morning does not feel like an obligation, but something that I genuinely want to return to.',
            'At this point, the most realistic step in that direction is continuing to develop towards technical QA and test automation. It allows me to use the experience I have gained through several years in quality assurance while returning more strongly to programming and continuously developing my technical skills.',
            'That does not mean giving up on my long-term ambition.',
            'I want to continue developing my skills in game design and game development, build my own projects and gradually gain experience beyond QA. I do not expect this to happen overnight. The game industry can be difficult, and I am fully aware that entering it as an inexperienced designer or developer is an entirely different challenge from already having several years of professional testing experience.',
            'Rather than putting everything on a single bet, I want to develop both paths in parallel — building a stable technical career while consistently working on my own skills and projects outside of work.',
            'In the long term, I would like to build a small team of around 7–12 people that could eventually grow into an independent game development studio. A studio creating its own games while also being open to external projects and collaboration with other companies.',
            'I do not know exactly what the road towards that point will look like, and it will probably change many times along the way.',
            'What I do know is what I want to achieve in the end: the freedom to create things according to my own vision, to work alongside people who also want to build something meaningful, and enough independence to consciously decide both where my career goes and how I want to live my life.',
          ],
        },
      ],
    },

    portfolio: {
      title: 'More to discover in my portfolio',
      lead:
        'Use the sections below to explore my professional background, technical capabilities and current work.',
      ariaLabel: 'Portfolio sections',

      sections: [
        {
          href: '/experience',
          title: 'Experience',
          description:
            'Professional background, responsibilities and practical experience.',
        },
        {
          href: '/skills',
          title: 'Skills',
          description:
            'Technical capabilities, tools and areas of continued development.',
        },
        {
          href: '/projects',
          title: 'Projects',
          description:
            'Public projects demonstrating automation and software engineering skills.',
        },
        {
          href: '/certifications',
          title: 'Certifications',
          description:
            'Professional credentials, completed programs and selected training.',
        },
        {
          href: '/contact',
          title: 'Contact',
          description:
            'Contact details, professional profiles and downloadable CV files.',
        },
      ],
    },
  },

  pl: {
    metadata: {
      title: 'Strona główna',
      description:
        'Portfolio techniczne Bartosza Girzeckiego prezentujące doświadczenie zawodowe, projekty techniczne oraz obszary dalszego rozwoju.',
    },

    profile: {
      alt: 'Portret Bartosza Girzeckiego',
      placeholder: 'Zdjęcie profilowe',
    },

    hero: {
      heading: 'Cześć, nazywam się',
      intro:
        '<strong>A to jest moja osobista strona portfolio.</strong> Jestem specjalistą technicznym z kilkuletnim doświadczeniem zawodowym w zapewnianiu jakości, zdobytym w branży gier. Dzięki temu doświadczeniu, wspieranemu przez moje mocne strony, wypracowałem przemyślane i wymagające podejście do tworzenia produktów, komunikacji, współpracy, rozwiązywania problemów oraz jakości. Obecnie rozwijam swoje umiejętności w automatyzacji testów w Pythonie, inżynierii oprogramowania i backendzie, jednocześnie kontynuując długoterminowy rozwój w kierunku game designu i tworzenia gier.',
    },

    scrollCue: {
      about: 'Dowiedz się o mnie więcej',
      portfolio: 'Poznaj moje portfolio',
    },

    about: {
      title: 'O mnie',
      lead:
        'Bardziej osobiste spojrzenie na to, jak znalazłem się w tym miejscu, co napędza mnie dzisiaj i dokąd chcę zmierzać — poza stanowiskami, narzędziami i technologiami przedstawionymi w pozostałych częściach portfolio.',

      chapters: [
        {
          title: 'Jak się tutaj znalazłem?',
          paragraphs: [
            'Od dawna szukam miejsca, w którym mógłbym połączyć dwie pozornie różne strony swojej osobowości — potrzebę tworzenia z logicznym i analitycznym sposobem myślenia.',
            'Już przy wyborze szkoły średniej naturalnie ciągnęło mnie w stronę przedmiotów ścisłych. Ukończyłem Śląskie Techniczne Zakłady Naukowe jako Technik Analityk. Wybrałem tę szkołę ze względu na jej dobrą opinię, rekomendacje nauczycieli i rodziny oraz dlatego, że kierunek analityczny wydawał się naturalnie pasować do mojego sposobu myślenia. Po ukończeniu szkoły rozpocząłem studia na kierunku Budownictwo na Politechnice Śląskiej. Dość szybko jednak zrozumiałem, że mimo technicznego charakteru nie jest to dziedzina, z którą chcę wiązać swoją przyszłość.',
            'Wtedy zacząłem poważniej myśleć o programowaniu. Wydawało się ono łączyć logikę z możliwością tworzenia rzeczy, a gdzieś z tyłu głowy pojawiła się również myśl, że być może pewnego dnia pozwoli mi spełnić jedną z największych ambicji — stworzyć własną grę.',
            'Zacząłem od Pythona i sześciomiesięcznego kursu Python Backend Developer w Coders Lab. Początki nie były łatwe, ale kiedy poszczególne elementy zaczęły układać się w całość, programowanie całkowicie mnie wciągnęło. Z czasem zauważyłem również, że daje mi ono coś więcej niż same umiejętności techniczne. Pojęcia takie jak abstrakcja, zależności między elementami czy rozbijanie złożonych problemów na mniejsze części zaczęły stopniowo wpływać również na sposób, w jaki patrzę na problemy poza kodem. Programowanie nauczyło mnie nie tylko szukać rozwiązania, ale również pytać, dlaczego coś działa właśnie w taki sposób.',
            'Po ukończeniu kursu moim pierwotnym planem było rozpoczęcie pracy jako Python Backend Developer. Życie miało jednak trochę inny pomysł. Od znajomej dowiedziałem się o możliwości pracy przy testowaniu gier i postanowiłem spróbować. W ten sposób trafiłem do Keywords Studios i dość niespodziewanie rozpocząłem swoją zawodową drogę w QA oraz branży game development.',
            'Kolejne lata w Keywords Studios, Carbon Studio i Anshar Studios pozwoliły mi zobaczyć tworzenie gier z bardzo różnych perspektyw — od dużych projektów konsolowych i wirtualnej rzeczywistości po produkcje AA+ oraz indie. Bezpośrednia współpraca z programistami, designerami i innymi zespołami deweloperskimi sprawiała, że coraz częściej przestawałem pytać wyłącznie <strong>czy coś działa</strong>. Coraz bardziej interesowało mnie <strong>jak zostało to zbudowane i jak sam mógłbym stworzyć coś podobnego</strong>.',
            'Wtedy ponownie wróciłem do programowania, tym razem ucząc się C++ i Unreal Engine oraz coraz głębiej poznając game development i game design.',
            'Po drodze odkryłem również, że dużą satysfakcję daje mi dzielenie się wiedzą. Praca jako tutor programowania i tworzenia gier pozwoliła mi spojrzeć na własne umiejętności z zupełnie innej perspektywy — czym innym jest samemu coś rozumieć, a czym innym potrafić wyjaśnić to drugiej osobie w sposób dopasowany do jej wieku, doświadczenia i sposobu myślenia.',
            'Ostatecznie naturalnym kolejnym krokiem stało się połączenie dwóch obszarów, które rozwijałem równolegle — programowania oraz kilkuletniego zawodowego doświadczenia w quality assurance. Dlatego obecnie rozwijam się w kierunku automatyzacji testów oraz bardziej technicznej strony QA.',
          ],
        },

        {
          title: 'Kim jestem?',
          paragraphs: [
            'Z natury jestem ciekawski i trudno mi zignorować pytanie: <strong>„A co się stanie, jeśli zrobię to?”</strong>',
            'W QA ta ciekawość często prowadzi mnie w stronę nietypowych scenariuszy i zachowań, których nikt wcześniej nie przewidział. Znalezienie czegoś nieoczywistego daje mi znacznie większą satysfakcję niż zwykłe wykonanie kolejnego oczywistego przypadku testowego.',
            'Do tworzenia podchodzę bardzo podobnie. Najbardziej fascynuje mnie moment, w którym mogę zanurzyć się w świecie lub systemie istniejącym jeszcze tylko w mojej wyobraźni — zastanawiać się, jak jego poszczególne elementy mogą ze sobą współgrać, które pomysły się uzupełniają, które wymagają zmiany i jak ostatecznie sprawić, żeby coś, co wcześniej istniało tylko w mojej głowie, zaczęło rzeczywiście działać.',
            'Dlatego w game designie najbardziej interesują mnie systemy i mechaniki, quest i narrative design oraz level design. Jednocześnie staram się nie ograniczać wyłącznie do jednej dziedziny. Lubię rozumieć przynajmniej podstawy wszystkich elementów składających się na większą całość. Wszechstronność jest dla mnie ważniejsza niż zamknięcie się w bardzo wąskiej specjalizacji.',
            'W podobny sposób patrzę na własną osobowość. Wiele cech może być zarówno zaletą, jak i wadą w zależności od sytuacji i ich natężenia. Dobrym przykładem jest perfekcjonizm. Potrafię długo dopracowywać szczegóły i trudno mi zaakceptować rozwiązanie, z którego nie jestem zadowolony. Dzięki temu bardzo zależy mi na jakości tego, co tworzę, ale wiem też, że czasami muszę świadomie powiedzieć sobie „na ten moment jest wystarczająco dobrze”, ruszyć dalej i wrócić do problemu później.',
            'Podobnie jest z uporem. Kiedy nie potrafię czegoś rozwiązać, najpierw zwykle pojawia się frustracja, a potem bardzo silna potrzeba znalezienia odpowiedzi. Czasami spędzam nad problemem znacznie więcej czasu, niż początkowo zakładałem, ale moment, w którym wszystko w końcu zaczyna działać, jest dla mnie jedną z najbardziej satysfakcjonujących części pracy technicznej.',
            'Mam również bardziej refleksyjną stronę. Często analizuję nie tylko problemy techniczne, ale także własne zachowanie, innych ludzi czy szersze kwestie egzystencjalne. Lubię zadawać pytania, rozkładać pomysły na części i próbować dochodzić do własnych wniosków — czasem poprzez logikę, czasem doświadczenie, a czasem po prostu zastanawiając się nad tym, co czuję i dlaczego.',
            'Poza pracą najbliżej mi chyba do szeroko rozumianej fantastyki. Uwielbiam gry, szczególnie Action RPG osadzone w światach dark fantasy — <em>Wiedźmin 3</em> od lat pozostaje moją ulubioną grą. Lubię również literaturę fantasy, szczególnie światy takie jak <em>Władca Pierścieni</em> i <em>Wiedźmin</em>. Sporą część mojego wolnego czasu zajmują także manga i anime, z <em>One Piece</em> jako zdecydowanym numerem jeden.',
            'Interesują mnie również nowe technologie i nauka, szczególnie wszystko, co związane z kosmosem. Doceniam dobrą popularyzację nauki, dlatego Kurzgesagt jest jednym z moich ulubionych kanałów — zarówno ze względu na poruszane tematy, jak i kreatywny oraz przystępny sposób tłumaczenia złożonych zagadnień.',
            'Poza tym jestem dużym fanem tatuaży — moja lewa ręka jest już pokryta rękawem i prawdopodobnie na tym się nie skończy — oraz aktywności fizycznej, nawet jeśli moja regularność w tym zakresie bywa czasami... zmienna.',
          ],
        },

        {
          title: 'Dokąd zmierzam?',
          paragraphs: [
            'Nie interesuje mnie wyłącznie znalezienie „dobrej pracy”. Chcę zbudować życie zawodowe, w którym wstawanie rano nie będzie kojarzyło się z obowiązkiem, ale z czymś, do czego rzeczywiście chcę wracać.',
            'Na ten moment najbardziej realistycznym krokiem w tym kierunku jest dalszy rozwój w stronę technicznego QA i automatyzacji testów. Pozwala mi to wykorzystać doświadczenie zdobyte przez kilka lat pracy w quality assurance, jednocześnie mocniej wracając do programowania i stale rozwijając swoje kompetencje techniczne.',
            'Nie oznacza to jednak rezygnacji z mojej długoterminowej ambicji.',
            'Chcę dalej rozwijać umiejętności związane z game designem i game developmentem, tworzyć własne projekty oraz stopniowo zdobywać doświadczenie wykraczające poza QA. Nie oczekuję, że wydarzy się to z dnia na dzień. Branża gier potrafi być trudna i mam pełną świadomość, że wejście do niej jako niedoświadczony designer czy developer jest zupełnie innym wyzwaniem niż posiadanie kilkuletniego zawodowego doświadczenia w testowaniu.',
            'Zamiast stawiać wszystko na jedną kartę, chcę rozwijać obie ścieżki równolegle — budować stabilną karierę techniczną, a jednocześnie konsekwentnie pracować nad własnymi umiejętnościami i projektami poza pracą.',
            'W dalszej przyszłości chciałbym stworzyć niewielki zespół liczący około 7–12 osób, który z czasem mógłby przekształcić się w niezależne studio gamedevowe. Studio tworzące własne gry, ale jednocześnie otwarte na projekty zewnętrzne i współpracę z innymi firmami.',
            'Nie wiem dokładnie, jak będzie wyglądała droga do tego miejsca i prawdopodobnie po drodze zmieni się jeszcze wiele razy.',
            'Wiem natomiast, co chcę ostatecznie osiągnąć: swobodę tworzenia rzeczy zgodnie z własną wizją, możliwość pracy z ludźmi, którzy również chcą budować coś wartościowego, oraz wystarczającą niezależność, aby świadomie decydować zarówno o kierunku swojej kariery, jak i o tym, jak chcę żyć.',
          ],
        },
      ],
    },

    portfolio: {
      title: 'Więcej do odkrycia w moim portfolio',
      lead:
        'Skorzystaj z poniższych sekcji, aby poznać moje doświadczenie zawodowe, kompetencje techniczne i aktualne projekty.',
      ariaLabel: 'Sekcje portfolio',

      sections: [
        {
          href: '/experience',
          title: 'Doświadczenie',
          description:
            'Historia zawodowa, zakres odpowiedzialności i praktyczne doświadczenie.',
        },
        {
          href: '/skills',
          title: 'Umiejętności',
          description:
            'Kompetencje techniczne, narzędzia i obszary dalszego rozwoju.',
        },
        {
          href: '/projects',
          title: 'Projekty',
          description:
            'Publiczne projekty prezentujące automatyzację testów i umiejętności software engineering.',
        },
        {
          href: '/certifications',
          title: 'Certyfikaty',
          description:
            'Certyfikaty zawodowe, ukończone programy i wybrane szkolenia.',
        },
        {
          href: '/contact',
          title: 'Kontakt',
          description:
            'Dane kontaktowe, profile zawodowe oraz pliki CV do pobrania.',
        },
      ],
    },
  },
} as const;

export const getHomeTranslations = (
  locale: Locale
) => homeTranslations[locale];