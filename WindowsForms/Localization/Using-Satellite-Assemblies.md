---
layout: post
title: Using Satellite Assemblies
description: using satellite assemblies
platform: WindowsForms
control: Localization
documentation: ug
---

# Using Satellite Assemblies

Localization is a key feature for providing solutions to global customers. This is true for a desktop applications as well as Syncfusion components. Resources are important for localizing an application; they contain the necessary settings for different languages and cultures. 

Internationalization and localization are different, but related, concepts:

* Internationalization: Ensuring an application can handle resources (e.g., strings) in a language-specific fashion. Internationalization is also known as i18n.
* Localization: Also known as l10n, localization is the process of customizing an application for specific cultures or regions. It is the adaptation of language, content, and design to reflect local cultural sensitivities.

## There are three types of cultures:

* Invariant: An invariant culture is always culture-insensitive, primarily used as a “default” culture. You can specify the invariant culture by name using an empty string (""). It is associated with the English language but not with any particular country or region.
* Neutral: A neutral culture is a culture that is associated with a language but not with a country or region. 
* Specific: A specific culture is a culture that is associated with a language and a country or region (e.g., “fr-CA” and “fr-FR”). For example, "fr" is a neutral culture and "fr-FR" is a specific culture. Note that "zh-CHS" (simplified Chinese) and "zh-CHT" (traditional Chinese) are neutral cultures.