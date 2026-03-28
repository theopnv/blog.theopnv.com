---
title: "Surveillance 2.0 : when privacy becomes a luxury"
date: 2026-02-06T00:00:00+00:00
tags: ["Privacy", "Web"]
categories: ["Privacy"]
author: "Theo Penavaire"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: ""
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
newsletterEn: true
cover:
    image: "posts/2026/02/privacy/images/cover.jpeg"
    alt: "Big Brother is watching you - 1984"
    relative: true
---


🇬🇧 _Howdy English speaker, please note that this article was translated from French using [Lumo](https://lumo.proton.me), a privacy-friendly AI._

---

> _The unchecked, centralized accumulation of citizen information creates the architecture for authoritarian rule. Just ask the former East Germans. This is why, in a democracy, it is the people who hold the right to privacy and the government which must operate in public. It cannot be the other way around.._ ([The Guardian, 30 janvier 2026](https://www.theguardian.com/commentisfree/2026/jan/30/ice-surveillance-app-mobile-fortify-authoritarian))

We need to talk about something.

Did you ever feel that your phone is listening to you? That the coincidence of an ad being shown two hours after you discussed that exact service or product with your family is actually not a coincidence and you're being spied on all day?

The reality is that Alphabet (Google), Amazon, Meta (Facebook), Apple, Microsoft and the like don’t even need to listen. They already know **everything** about you, without having to waste massive energy scanning 5 billion (the number of smartphones in circulation) × 16 hours (let’s say the length of a typical day) of hypothetical audio recordings per day. It is far easier to obtain more information by other means.

## The information economy

These companies make money thanks to the myriad of data we generate throughout the day. The social networks we consume, knowing all our tastes; the cookies and trackers present on the majority of websites knowing all our browsing; and our devices, which when approaching different Wi‑Fi networks and connecting to antennas know all our movements. All of this allows building a user profile strong of a thousands of data points. Data collection thus does not even need microphones or cameras; it's passive thanks to the aggregation of our data and an algorithmic analysis.

A single example: the mind‑blowing quality of Spotify recommendations, offered by an algorithm trained **solely** on your listening data, which knows you better than you know yourself. Imagine the size of your data profile stored on Google’s servers, storing: your emails, your calendar, your photos, your Google Maps trips, your search history and your long and deep conversations with its Gemini AI (a ChatGPT competitor).

So, what are these data used for? To serve you targeted advertising, which has a higher chance of generating a click than random ads. Our information truly has the value of a currency, which we exchange for a service, most often free. The discomfort about the amount of information collected behind my back does not personally raise an existential problem for me. I’m the first to listen to my Spotify “Wrapped” summary in December, after all.

My problem lies elsewhere. My discomfort is larger. And this long introduction's purpose was only to make you aware of the staggering amount of data we produce, of how easy it is to collect it, and of the ignorant or passive acceptance we show toward that collection.

## Toward control of information

News outlets and TV channels have not lacked topics for several months now, in a constantly bubbling world. It's unsurprising that little attention is given to this matter, and consequently little general concern.

This matter is **the constant reinforcement of control over our information by governmental bodies**: national, supranational and foreign.

### The European example: Chat Control

![Carte Chat Control](images/chatcontrol-map.png)

The European Union has been looking for a solution for several years to fight child sexual abuse. It pushes to implement “Chat Control”: an automatic, mandatory scan of every message sent by every citizen. To understand all its implications, a short technical passage is necessary.

**Encryption**. When a conversation is unencrypted, the information travels “in clear” over the network. Any observer on the device (for example, the Instagram app) or on the network (for example, the NSA) can read and store the conversation. When a conversation is encrypted, a mathematical algorithm converts the messages into a string of characters decipherable only through the use of a key. Only the sender and the recipient possess this key, making any third‑party decryption attempt mathematically impossible. This is excellent practice to protect the right to privacy: any correspondence should be seen only by the intended recipients.

One flagship proposal of Chat Control is to force messaging apps to compare all content sent, especially pictures, to a database of child‑pornographic material. Every submission that matches an entry in the database is automatically reported to the police. A good idea at first glance…?

**The first problem is the breaking of encryption**. To scan a message, a third party must be allowed in to compare it to the database. The promise that only the sender and recipient can read it is therefore broken [^1]. Weakening encryption also opens the way to increased hacking and disclosure risks (financial, judicial, journalistic, medical data).

**The second problem is precedent**. Once such a system is authorized and technically implemented to target child abusers, anyone could add content to the database without prior audit. Liberal democracies would deliver a ready-to-use system to any sort of extremist executive power seeking expanded control. Tomorrow, simply by adding new potential matches to the database, France under Marine Le Pen could decide to target immigrants, Hungary under Viktor Orbán could target LGBT people, and conservatives in Poland could target and report attempts at abortion.

**The third problem is false positives**. Any suspicious image sent, even within a legal and consensual framework (e.g. vacation photos, or an exchange between two teenagers), could potentially be reported to police and judicial authorities. In addition to placing false accusations on innocent people, experts are sure that the gigantic number of false‑positive reports would be counter‑productive. It would engage massive resources to examine each case that could be better employed for targeted, court‑mandated investigations. 100 billions messages are sent daily on WhatsApp. Even assuming a negative ratio of 99.99 %, ten million messages would have to be examined by humans each day. And that is only on WhatsApp!

**The fourth problem (and not the last, but I promise to stop after) is the highly contestable legality of this measure**. The idea of mass surveillance without proportional targeting and judicial oversight is probably illegal and a violation of fundamental rights guaranteed by numerous texts such as the EU Charter ([article 7 & 8](https://fra.europa.eu/fr/eu-charter/article/7-respect-de-la-vie-privee-et-familiale)) or the French Constitution ([Article  2](https://www.senat.fr/questions/base/2009/qSEQ091110883.html)).

The Chat Control example is revealing. It prepares a precedent for generalized surveillance starting from a poorly studied, technically flawed idea that contradicts fundamental human‑rights texts.

### The international example: internet segmentation through age verification

The French National Assembly voted on Tuesday 27 January the adoption of [the bill banning social networks for those under 15 years old](https://www.assemblee-nationale.fr/dyn/17/textes/l17b2341_texte-adopte-commission#). On paper, another seemingly good idea. We know the problems caused by social networks, especially for developing brains and psyches that need time for other educational and social activities.

France would be only the second (and likely not the last) country to adopt this ban, after Australia. The wording of the idea emphasizes protecting minors, a stance that is hard to argue against.

The main problem appears when the idea is flipped: to access a social network, every citizen will have to show a clean slate by exposing personal data—age and possibly full identity—to the network. Among the envisaged solutions:

- A “proof” via facial scan and AI analysis: this exposes the user (e.g., 16 years old) to machine error (estimated as 14) and denial of access to a site they should be allowed to use.
- A proof by sending an identity document: in a simplified, naïve implementation, this exposes the user to future data leaks, which have been occurring for years and do not fall short of targeting governmental services ([URSSAF](https://www.urssaf.fr/accueil/actualites/pajemploi-vol-de-donnees.html), [France Travail](https://www.francetravail.org/accueil/communiques/2025/le-reseau-des-missions-locales-et-france-travail-appellent-a-la-vigilance-apres-un-acte-de-cyber-malveillance.html?type=article)). It also excludes those without an identity document. Finally, it attacks privacy because the website would gain access to the person’s identity. If decision‑makers choose this method, it is **essential** to devise a serious technical implementation that could partially solve this problem [^2].

The examples of the [United Kingdom](https://www.theguardian.com/culture/2019/oct/16/uk-drops-plans-for-online-pornography-age-verification-system) and [Australia](https://proton.me/blog/australia-social-media-ban-privacy) nevertheless question legislators’ ability to implement a technically and ethically robust solution (assuming one exists). The lack of a finished solution preserving anonymity, or at least pseudonymity, would ultimately introduce the same problems as Chat Control: increased risk for journalists or activists who cannot stay anonymous during their research, and degradation of the right to privacy for everyone.

I'm moving a second, more philosophical problem to the footnotes because, although relevant, it diverts us from the core issue of digital liberty erosion [^3].

As a counter‑point we could argue that, after all, we must also identify ourselves to porn sites ([since 2025 in France](https://www.economie.gouv.fr/actualites/protection-des-mineurs-en-ligne-les-sites-pornographiques-doivent-de-nouveau-controler)). Should we abolish any age verification on those sites and implicitly re‑allow minors, under the pretext of strict privacy preservation?

I'll acknowledge this valid argument and that protecting minors from unsuitable content is absolutely desirable. From that angle, and provided a societal and scientific consensus motivates it, it also seems legitimate to prefer protecting children from social networks.

But I want to stress the imperative to think about a serious technical implementation so as not to compromise everyone’s privacy [^2]. A progressive set of protective measures also seems preferable to me to an outright block.

Unfortunately, major doubts remain today regarding legislation pushing a responsible technical solution, mainly because of an [overly hasty agenda](https://projetarcadie.com/verification-age-reseaux-sociaux-mort-ne/), driven by inexperienced politicians in quest for easy and cheap wins.

## The conspiracy trap: what are the motivations?

These two examples reflect the difficulty of navigating between simple, absolutist solutions and complex, progressive ones. The desire to quickly solve minor‑protecting or crime‑fighting problems—issues on which everyone agrees, but which affect a minority—often justifies a hastily implemented measure that impacts the majority.

Very often the slope becomes steep once the precedent is set. Thus in France we now hear [the Minister for Digital Affairs](https://www.franceinfo.fr/replay-magazine/franceinfo/l-invite-politique/l-invite-politique-du-vendredi-30-janvier-2026_7774163.html) saying she's ready to fight against a random set of "internet" tools: “VPNs (ed.: virtual private networks, major privacy‑protecting tools heavily restricted in many authoritarian countries such as Russia, Iran or China), are the next item on my list.” Or [the British Secretary of State](https://www.irishlegal.com/articles/uk-home-secretary-dreams-of-ai-powered-panopticon) literally wanting to create a [panoptic surveillance system](https://geoconfluences.ens-lyon.fr/glossaire/panoptique) for the whole country, boosted by artificial intelligence.

![Panoptic prison](images/panopticon.jpg)

Panoptic prison: centralized, globalized surveillance. _Source: [The New York Times](https://www.nytimes.com/2013/07/21/books/review/the-panopticon-by-jenni-fagan.html)_

During my research, a question eluded me: **why the hell would we want to monitor everyone, all the time?** Is it not just conspiratorial thinking to see our politicians as inherently sneaky, evil, and driven by a hidden agenda? I have ideas rather than established answers.

### The capitalist idea

More control over data _in fine_ equals more money for the Silicon Valley technocratic billionaires, as seen in the first part. The erosion of privacy is thus more a side‑effect of the money race than a goal in itself. The more these corporations earn, the more they gain lobbying power over politics.

### The political idea

A desire to influence a people that is losing sovereignty, for instance through more targeted advertising. This happened during the [Cambridge Analytica scandal](https://fr.wikipedia.org/wiki/Scandale_Facebook-Cambridge_Analytica), where personal data from 87 million Facebook users were used to sway voting intentions toward Brexit vote in 2016, or toward the Republican Party in the US. Note the Democrat Party also used a similar system, [Project Narwhal](https://en.wikipedia.org/wiki/Project_Narwhal), during Obama's campaign in 2012.

Even today the [Fidesz party of Orbán](https://www.hrw.org/report/2022/12/01/trapped-web/exploitation-personal-data-hungarys-2022-elections) in Hungary uses personal data obtained from a national administrative database to influence election outcomes in its favor, blatantly showcasing abusing power.

### The “invisible self‑reinforcing” idea

There may not be an explicit willingness to control information and communications. Rather, a downward slope that tightens with each precedent ([ratchet effect](https://fr.wikipedia.org/wiki/Effet_cliquet#En_droit_des_libert%C3%A9s_fondamentales)).

Governments are prompted to adopt protective measures in response to low‑impact but highly visible threats: terrorism, child sexual abuse. One only needs to recall the disproportionate U.S. response after the September 11 attacks: a full‑scale invasion of Afghanistan for 20 years and the establishment of a domestic and international surveillance system by the NSA under the cover of the [Patriot Act](https://en.wikipedia.org/wiki/Patriot_Act). 

Populations do not perceive the other side of the coin: less visible but more insidious dangers. The erosion of privacy, gradually turning into digital totalitarianism, also erodes democratic systems. The irony? It's exactly what terrorists want: for Western civilization to self‑destruct from within with minimal effort.

Often, these “protective” measures are implemented by executive‑derived bodies without a direct mandate for transparency from the people: the NSA for the Patriot Act, the European Commission for Chat Control. This makes it even harder to grasp the scale and consequences of such measures.

## What are the consequences?

### A life sold for €5 on the dark web

Blogger Korben wrote an excellent [article on recurring data breaches](https://korben.info/hacks-france-2025-bilan.html). There is not a single day we don't hear a company has been hacked and lost its customers’ data. This also applies to state services, as seen earlier for France Travail ([December 2025](https://www.francetravail.org/accueil/communiques/2025/le-reseau-des-missions-locales-et-france-travail-appellent-a-la-vigilance-apres-un-acte-de-cyber-malveillance.html?type=article)) or URSSAF ([November 2025](https://www.urssaf.fr/accueil/actualites/pajemploi-vol-de-donnees.html)).

The result? With the plethora of data stored by all the services we use, it becomes easy to cross‑reference data to build a profile containing the entirety of our information and sell that to scammers for cheap. This fuels the rise of fake‑parcel scams (easy to be credible when your address has already leaked) or fake banking advisor scams (credible when your bank details have already leaked).

It is impossible to guarantee an inviolable security. Therefore we must assume data breaches are inevitable and, as such, do everything possible to minimize our digital footprint. Not easy when governments choose the path of weakening encryption (see Chat Control) or constantly demand more information (see age verification).

### AI‑boosted Big Brother

Surveillance‑network technologies and Artificial Intelligence become so powerful and widespread that a 1984‑style future is no longer excluded. Imagine if the USSR had access to these technologies. It would have been easy for the regime to detect any thought contrary to the state ideology before a citizen even became aware of it. On a smaller scale, we already see such advanced control technologies deployed in China or Russia.

But you don’t need to go to authoritarian countries; just cross the Atlantic. In the United States, [The Guardian reports](https://www.theguardian.com/commentisfree/2026/jan/30/ice-surveillance-app-mobile-fortify-authoritarian) that the “Mobile Fortify” app allows ICE to access a mountain of information from a simple facial scan on the street. The app is used by ICE, weaponized by Trump, to randomly detain individuals, often without immediate recourse for false positives. [As Korben summarizes](https://korben.info/mobile-fortify-ice-certificat-naissance-algorithme.html), “it flips the burden of proof: an algorithm becomes more reliable than an official document.”

### Elite hypocrisy

Finally, another disturbing aspect: the hypocrisy of the governing “elites”. To bounce back to current events, it's enough to consider the number of witnesses, even accomplices, among heads of state, ministers and deputies of all kinds mentioned in the Epstein files. The argument of protecting children, at least when it comes from these “elites”, loses some of its meaning, doesn’t it?

Another controversial aspect of the proposed implementation of Chat Control is that [politicians at large would be exempt](https://www.eureporter.co/business/data/mass-surveillance-data/2024/04/15/leak-eu-interior-ministers-want-to-exempt-themselves-from-chat-control-bulk-scanning-of-private-messages/). This is an acknowledgement of the dangers posed by weakening confidentiality and encryption measures, but it also shows that politicians do not want to bear the consequences of their actions inflicted on the rest of the population.

This double‑standard, this hypocrisy, erodes peoples’ trust in their representative institutions in the long run, as well as in democracy.

## What solutions?

Thus we understand that respect for privacy, both in the physical world and in the digital world, is **inalienable**. There are many additional arguments:

- [Alex Winter](https://www.youtube.com/watch?v=luvthTjC0OI?si=w-FKzEXNZTyahcb0&t=791) does not accept the idea that if we have nothing to hide, we have nothing to fear: “Privacy has is useful. That’s why we have blinds on our windows and a door to our bathroom.”

- [Edward Snowden](https://www.reddit.com/r/IAmA/comments/36ru89/comment/crglgh2/) argues that “claiming you don’t care about the right to privacy because you have nothing to hide is equivalent to saying you don’t care about freedom of expression because you have nothing to say.” [^4]

The first—and most important—action is therefore to establish the fundamental importance of respecting privacy and adopting digital minimalism by default.

It is essential to educate people on these core issues, which receive far too little media exposure.

By denouncing the application of measures labeled “protective”, we are not siding with pedophiles, criminals, or terrorists. We are saying that we do not agree with the blanket application of anything under the pretext of fighting those. Rather than quick‑fix substitutes, we need to provide targeted, progressive, transparent, and scientifically grounded responses.

I am also preparing an article on the solutions we can all adopt, at our own scale, to limit the damage. Stay tuned…!

# References

[^1]: One counterargument is that it would not be necessary to break the encryption to scan messages if this were done locally on the machine. This is theoretically possible, [but experts are very skeptical](https://www.eff.org/deeplinks/2019/11/why-adding-client-side-scanning-breaks-end-end-encryption) about its practical implementation and believe that, in the long term, there is a high probability that matching will be done on a remote server controlled by a third party. 

[^2]: This refers to the [double anonymity technique](https://www.franceinfo.fr/societe/pornographie/controle-de-l-age-des-visiteurs-de-sites-pornographiques-comment-fonctionne-le-double-anonymat-concu-pour-proteger-les-donnees-des-internautes_7179942.html). Instead of sending a complete identity document directly to the social network, the user generates an “age token” from an accredited verifier. They can then use it on any network without their identity being linked to it (https://openageinitiative.org). 

[^3]: Banning social networks (or other apps and sites when a precedent is set) for those under 15 extracts [17 % of the population](https://www.statista.com/statistics/464032/distribution-population-age-group-france/) from the public forum that is social media. Despite their downsides, social networks also play a sociabilising, educational, and world‑opening role when used responsibly. Philosopher Roger‑Pol Droit, for example, raises the question of learning to detect truth from falsehood on networks ([C À Vous episode on Tuesday, 27 January 2026](https://www.france.tv/france-5/c-a-vous/saison-17/8078280-emission-du-mardi-27-janvier-2026.html)). Rather than a pure ban, he suggests educating critical thinking through better use of these networks. [Most young people cannot distinguish real information from fake](https://www.latribune.fr/technos-medias/medias/la-plupart-des-jeunes-ne-savent-pas-distinguer-les-vraies-informations-des-fausses-619236.html). Instead of being thrown into the deep end abruptly by an arbitrary “numerical majority,” it would therefore be important to gradually teach proper use of social networks.

[^4]: The “I have nothing to hide” argument is fallacious: even if that’s true for you, it isn’t for your neighbour, your sister, a whistle‑blower, or a journalist. An example: [the US government can already request Google for a list of people who have searched specific terms](https://korben.info/pennsylvania-court-google-keyword-search-warrant.html). This precedent allows any extremist government to ask Google for a list of people who don’t fit its narrowly defined criteria. This applies to activists warning about illegal governmental practices ([Edward Snowden about PRISM](https://en.wikipedia.org/wiki/PRISM)), or for instance in Texas or conservative states, this could apply to a distressed woman seeking an abortion.

## To go further:

- https://ssd.eff.org/
- https://fightchatcontrol.eu/
