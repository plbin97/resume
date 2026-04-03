// ---- Page & font setup ----
#set page(margin: (x: 1.2cm, y: 1.2cm), paper: "us-letter")
#set text(font: "Geist", size: 10pt)
#set par(justify: true, leading: 0.6em)

// ---- Helper functions ----
#let header-rule() = {
  v(-3pt)
  line(length: 100%, stroke: 0.5pt)
  v(-2pt)
}

#let section(title) = {
  v(6pt)
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
    #link("mailto:i@teenet.me")[i\@teenet.me] |
    (973) 752-2776 |
    Irving, TX |
    #link("https://www.teenet.me")[teenet.me] |
    #link("https://www.linkedin.com/in/linbin-pang-724a90113")[LinkedIn]
  ]
]

// ---- Experience ----
#section("Experience")

#entry(
  [*Full Stack Engineer* -- 7-Eleven R&D, Irving, TX],
  [_TODO_ -- Present],
)
- _TODO: Add bullet points describing your role, responsibilities, and achievements at 7-Eleven._

#v(4pt)

#entry(
  [*Software Engineer* -- NJIT Department of Informatics, Newark, NJ],
  [Mar 2019 -- Sep 2019],
)
- Developed an NSF-funded drag-and-drop data processing platform using microservice architecture and agile methodology
- Built the platform with Node.js, Express.js, MongoDB, React.js, Webpack, and Babel
- Collaborated with research teams to deliver tools for data analysis workflows

#v(4pt)

#entry(
  [*Founder & Full Stack Engineer* -- Qingnai Network Technology Co. Ltd., Shenzhen, China],
  [Jan 2016 -- Oct 2019],
)
- Founded ThatSeed, a network accelerator service that grew to 22,000+ users and 1,500+ daily active users
- Built user management, billing, and traffic relay systems from the ground up
- Implemented high-concurrency architecture with load balancing to handle peak traffic

// ---- Education ----
#section("Education")

#entry(
  [*Trine University*],
  [2025 -- 2026],
)
_TODO: Add degree and field of study._

#v(4pt)

#entry(
  [*New Jersey Institute of Technology* -- Informatics],
  [2017 -- 2022],
)

// ---- Skills ----
#section("Skills")

*Languages:* JavaScript (ES5/ES6), Python, Java, PHP \
*Frontend:* React, Redux, Webpack, Babel \
*Backend:* Node.js, Express.js, Nginx, MongoDB, MySQL, WebSocket, WebRTC \
*DevOps & Tools:* Docker, CircleCI, Linux, Git, RESTful APIs \
*CMS:* WordPress, Drupal, Ghost

// ---- Projects ----
#section("Projects")

#entry(
  [*ThatSeed* -- Network Acceleration Service],
  [2016 -- 2019],
)
- Built a full-stack platform with user management, billing, and traffic relay serving 22,000+ users
- Designed high-availability infrastructure with load balancing and traffic routing

#v(4pt)

#entry(
  [*Funny Nation* -- Discord Bot],
  [],
)
- Developed a multi-server Discord bot for community engagement
