import type { Locale } from './common';

export const contactTranslations = {
  en: {
    metadata: {
      title: 'Contact',
      description:
        'Contact Bartosz Girzecki regarding software quality, test automation, technical projects and professional opportunities.',
    },

    hero: {
      title: 'Contact',
      lead:
        'Have a role, project or technical challenge worth discussing? Send me a message or use one of the direct contact options below.',
    },

    layoutAria: 'Contact options',

    form: {
      title: 'Send a message',
      name: 'Name',
      namePlaceholder: 'Your name',
      email: 'Email',
      emailPlaceholder: 'you@example.com',
      subject: 'Subject',
      subjectPlaceholder:
        'What would you like to discuss?',
      message: 'Message',
      messagePlaceholder:
        'Share the relevant details...',
      submit: 'Send message',
      requiredFields: 'Required fields',

      sending: 'Sending message...',
      success:
        'Message sent successfully. Thank you — I will get back to you soon.',
      error:
        'Message could not be sent. Please try again or contact me directly by email.',
    },

    direct: {
      title: 'Reach out directly',
      email: 'Email',
      phone: 'Phone',
      phoneNote:
        'Full number available on request',
      location: 'Location',
      locationValue: 'Katowice, Poland',
      mapTitle:
        'Map showing central Katowice, Poland',
    },

    resources: {
      title: 'Links & CV',
      cvAria: 'Download CV',
      cvPolish: 'CV — Polish',
      cvEnglish: 'CV — English',
      downloadPdf: 'Download PDF',
      profilesAria: 'Professional profiles',
    },
  },

  pl: {
    metadata: {
      title: 'Kontakt',
      description:
        'Kontakt z Bartoszem Girzeckim w sprawie jakości oprogramowania, automatyzacji testów, projektów technicznych i możliwości zawodowych.',
    },

    hero: {
      title: 'Kontakt',
      lead:
        'Masz ofertę, projekt lub techniczne wyzwanie, o którym warto porozmawiać? Wyślij mi wiadomość lub skorzystaj z jednej z bezpośrednich form kontaktu poniżej.',
    },

    layoutAria: 'Opcje kontaktu',

    form: {
      title: 'Wyślij wiadomość',
      name: 'Imię i nazwisko',
      namePlaceholder: 'Twoje imię i nazwisko',
      email: 'Email',
      emailPlaceholder: 'ty@example.com',
      subject: 'Temat',
      subjectPlaceholder:
        'O czym chcesz porozmawiać?',
      message: 'Wiadomość',
      messagePlaceholder:
        'Podaj najważniejsze szczegóły...',
      submit: 'Wyślij wiadomość',
      requiredFields: 'Pola wymagane',

      sending: 'Wysyłanie wiadomości...',
      success:
        'Wiadomość została wysłana. Dziękuję — odezwę się tak szybko, jak to możliwe.',
      error:
        'Nie udało się wysłać wiadomości. Spróbuj ponownie lub skontaktuj się ze mną bezpośrednio przez email.',
    },

    direct: {
      title: 'Kontakt bezpośredni',
      email: 'Email',
      phone: 'Telefon',
      phoneNote:
        'Pełny numer dostępny na życzenie',
      location: 'Lokalizacja',
      locationValue: 'Katowice, Polska',
      mapTitle:
        'Mapa przedstawiająca centrum Katowic',
    },

    resources: {
      title: 'Linki i CV',
      cvAria: 'Pobierz CV',
      cvPolish: 'CV — polski',
      cvEnglish: 'CV — angielski',
      downloadPdf: 'Pobierz PDF',
      profilesAria: 'Profile zawodowe',
    },
  },
} as const;

export const getContactTranslations = (
  locale: Locale
) => contactTranslations[locale];