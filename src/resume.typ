// ---- Page & font setup ----
#set page(margin: (x: 1.0cm, y: 1.0cm), paper: "us-letter")
#set text(font: "Geist", size: 10pt)
#set par(justify: true, leading: 0.6em)
#show list: set block(spacing: 0.7em)
#set list(spacing: 0.55em, indent: 0.6em)

// ---- Helper functions ----
#let header-rule() = {
  v(-3pt)
  line(length: 100%, stroke: 0.5pt)
  v(-2pt)
}

#let section(title) = {
  v(3pt)
  text(size: 11pt, weight: "bold", upper(title))
  header-rule()
}

#let entry(left, right) = {
  block(width: 100%)[
    #left #h(1fr) #emph(right)
  ]
}

// ---- Header ----
#align(center)[
  #text(size: 20pt, weight: "bold")[Linbin Pang]
  #v(-6pt)
  #text(size: 10pt)[
    #link("mailto:linbinpang@gmail.com")[linbinpang\@gmail.com] |
    (973) 752-2776 |
    Irving, TX |
    #link("https://www.linkedin.com/in/linbin-pang-724a90113")[LinkedIn] |
    #link("https://github.com/plbin97")[GitHub]
  ]
]

// ---- Experience ----
#section("Experience")

#entry(
  [*Full Stack Engineer* -- 7-Eleven R&D, Irving, TX],
  [Nov 2022 -- May 2026],
)
- *7GG* -- 7Now client for gamers
  - Led a team to design and build the 7Now ordering client for gamers (MVP in development)
  - Partnered with the Overwolf team to ship an Angular + Electron desktop client to the 7Now team
  - Tech stack: Angular, Electron, NestJS, Nx, TypeScript
- *Slurpee UI* -- centralized component library
  - Led a team to architect and build a shared UI component library spanning 30+ components
  - Shipped Slurpee-React, Slurpee-Angular, and Slurpee-Next packages adopted by the 7Now and EDP teams
  - Tech stack: Stencil, Nx, Angular, React, TypeScript, Sass
- *Tabasco* -- Tablet-Based Self Checkout
  - Built new features for 7-Eleven's tablet-based self-checkout, deployed to 3,000+ stores and processing millions of transactions
  - Shipped self-checkout features for Speedway
  - Tech stack: React Native, Android SDK, TypeScript, Java
- *7IoT* -- IoT data platform for 7-Eleven stores
  - Architected the 7IoT platform to collect and analyze store telemetry, rolled out to 100+ stores
  - Owned 7Snapshot, the IoT device onboarding system
  - Tech stack: React, Express, JavaScript

#v(6pt)

#entry(
  [*Software Engineer* -- NJIT Department of Informatics, Newark, NJ],
  [Mar 2019 -- Sep 2019],
)
- Analyzed requirements and designed an open knowledge platform in collaboration with NJIT professors and PhD researchers
- Built a web-based data analysis pipeline for Geoinformatics researchers
- Project sponsored by the National Science Foundation (NSF)
- Tech stack: Python, Flask, React, Express, MongoDB

#v(6pt)

#entry(
  [*Founder & Software Engineer* -- Qingnai Network Technology Co. Ltd., Shenzhen, China],
  [Jan 2016 -- Oct 2019],
)
- Built ThatSeed, a consumer VPN service
- Led a team to build the VPN network relay system, PHP backend, Kotlin-based Android client, and a web frontend built on Qingnai's in-house frontend framework
- Grew the product to 22,000+ registered users and 1,500+ daily active users
- Tech stack: PHP, JavaScript, Node.js, Go, Kotlin

// ---- Education ----
#section("Education")

#entry(
  [*Trine University* -- Master of Science in Information Studies],
  [2025 -- 2026],
)
#entry(
  [*New Jersey Institute of Technology* -- Bachelor of Science in Web and Information Systems],
  [2017 -- 2022],
)

// ---- Skills ----
#section("Skills")

*Expert:* TypeScript, React/Next, Node/Bun, Elysia, Express, Postgres, Prisma/Drizzle, Nx Monorepo, Claude Code \
*Advanced:* Electron, React Native, Angular, AWS, MongoDB, Stencil, Sass, Python \
*Familiar:* Android SDK (Kotlin/Java), PHP, NestJS, Go

// ---- Side Projects ----
#section("Side Projects")

#entry(
  [*#link("https://playbadminton.app")[playbadminton.app]*],
  [],
)
- A ranking and session management platform for badminton clubs, used by the majority of badminton clubs in the Dallas area
- Built solo with TypeScript, React, Elysia, Drizzle, Bun, Postgres, Railway

