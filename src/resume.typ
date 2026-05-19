// ---- Page & font setup ----
#set page(margin: (x: 0.70cm, y: 0.50cm), paper: "us-letter")
#set text(font: "Times New Roman", size: 10pt)
#set par(justify: true, leading: 0.78em)
#show list: set block(above: 0.75em, below: 0pt)
#set list(spacing: 0.65em, indent: 0.5em)
#show link: underline

// ---- Helper functions ----
#let header-rule() = {
  v(0pt)
  line(length: 100%, stroke: 0.5pt)
  v(0pt)
}

#let section(title, above: 4pt) = {
  v(above)
  text(size: 10pt, weight: "bold", upper(title))
  header-rule()
}

#let entry(left, right) = {
  block(width: 100%, above: 7pt, below: 0pt)[
    #left #h(1fr) #emph(right)
  ]
}

#let tight-entry(left, right) = {
  block(width: 100%, above: 7pt, below: 0pt)[
    #left #h(1fr) #emph(right)
  ]
}

// ---- Header ----
#align(center)[
  #text(size: 16pt, weight: "bold")[Yi Shi]
  #v(-3pt)
  #text(size: 10pt)[
    #link("mailto:shiyivicaaa@gmail.com")[shiyivicaaa\@gmail.com] |
    617-259-7715 |
    Seattle, WA |
    #link("https://linkedin.com/in/shiyivic/")[LinkedIn]
  ]
]

// ---- Experience ----
#section("Experience")

#entry(
  [*Software Development Engineer* | Cactus Capital Group LLC, TX / Remote],
  [Sep. 2025 -- Present],
)
#block(above: 5pt, below: 0pt)[_CapEx -- Investment Portfolio Analytics Platform_]
- Architected a full-stack portfolio analytics platform using *React.js*, *TypeScript*, and *Express.js* with *AWS DynamoDB* and *Redis* caching, delivering real-time P&L dashboards to institutional clients at sub-100ms query latency.
- Engineered *Python* and *Node.js* microservices on *AWS Lambda* for automated market data ingestion, risk assessment, and portfolio rebalancing alerts, processing millions of daily transactions with 99.9% uptime.
- Built *JWT*-authenticated *RESTful APIs* with *MySQL* and role-based access control; integrated *GitHub* Actions *CI/CD* pipelines, cutting deployment cycle time by 35% across enterprise client environments.

#entry(
  [*Software Development Engineer Intern* | TDK SensEI, PA],
  [Jun. 2025 -- Aug. 2025],
)
#block(above: 5pt, below: 0pt)[_Bigswing -- GenAI Anomaly Prediction Service_]
- Designed a production-grade *GenAI* anomaly prediction service integrating *ML inference* via *AWS Bedrock*, *Lambda*, and *S3*, processing high-frequency sensor data with 99%+ precision to prevent manufacturing failures.
- Built real-time monitoring dashboards with *React.js*, *Express.js*, and *RESTful APIs*; refactored inference pipeline from Bedrock to *SmolAgent* / *LangChain*, reducing response latency by 30%.
- Built synthetic data and load-testing frameworks, cutting end-to-end pipeline runtime by 95% and validating system stability under edge cases.

#entry(
  [*Software Development Engineer Intern* | Shawk Solution, WA],
  [Jan. 2025 -- Apr. 2025],
)
#block(above: 5pt, below: 0pt)[_CowBot -- Gemini-based AI Querying Agent_]
- Designed a production *Gemini*-based AI querying agent with *Node.js* / *Express.js* APIs enabling natural-language data access; integrated *Pinecone* vector database for embedding retrieval, reducing query latency by 30%.
- Built a scalable monorepo frontend with *React*, *TypeScript*, and *Tailwind CSS* via *Nx*; migrated backend to *Bun* for 40% throughput gain; secured APIs with *JWT* / *GraphQL*-based role-based access control.
- Collaborated with UI/UX teams via *Figma* and *Miro* to design and deliver responsive, accessible interfaces.

#entry(
  [*Software Development Engineer* | Joblogic-X Corporation, TX],
  [Jun. 2021 -- Feb. 2023],
)
#block(above: 5pt, below: 0pt)[_CarbonX -- Carbon Trading & Data Platform_]
- Optimized carbon trading data pipelines on *AWS* with *S3*, *EMR*, *Airflow*, and *Parquet*, achieving 12x faster processing using *Spark DataFrames* and *Spark SQL* on large-scale datasets.
- Containerized services with *Docker* and deployed fault-tolerant microservices via *Kubernetes* RollingUpdate; upgraded *CI/CD* pipelines with *MongoDB* logging and *Elasticsearch* for zero-downtime releases.
#block(above: 5pt, below: 0pt)[_MetricsDash -- Real-Time Analytics Dashboard_]
- Built interactive analytics dashboards with *Python*, *Flask*, and *Dash*; integrated *Elasticsearch* for full-text search in high-concurrency environments, enhancing data retrieval.
- Implemented *Pylint*, *Pytest*, *Selenium*, and *Jest* test suites ensuring API and UI reliability across 20+ endpoints.
- Integrated *MongoDB* data sources for structured log querying and real-time chart updates on the dashboard.
#block(above: 5pt, below: 0pt)[_Land Management System -- ArcGIS Platform_]
- Engineered a real-time *ArcGIS* land management system with *Vue.js*, *TypeScript*, and *Vuex* (20% LCP/INP/CLS improvement); secured via *Java* / *Spring Boot* APIs and *Redis*-over-*MySQL* caching (15% faster).
- Built interactive map features with *ArcGIS JS API* and *TypeScript* for real-time property visualization and client management.
- Spearheaded a VR exhibition app with *Unity*, *C\#*, *Unity XR Toolkit*, *Oculus*, and *Pico SDK* for immersive cross-platform 3D experiences for 1000+ users.

// ---- Education ----
#section("Education", above: 12pt)

#tight-entry(
  [*Northeastern University* -- Master of Science in Computer Science],
  [Boston, MA | Dec. 2025],
)
#tight-entry(
  [*Denison University* -- Bachelor of Science in Biology; Computer Science Minor; Art Studio Minor],
  [Columbus, OH | Jun. 2021],
)

// ---- Skills ----
#section("Skills", above: 12pt)

#block(above: 7pt, below: 0pt)[
  *Expert:* Python, Java, TypeScript, JavaScript, React.js, Node.js, Express.js, Angular.js, MySQL, MongoDB, Redis, Amazon DynamoDB, AWS, Claude Code, GitHub \
  *Proficient:* Spring Boot, Spring Cloud, PostgreSQL, SQL Server, Flask, Django, Next.js, Vue.js, MyBatis, Docker, Kubernetes \
  *Familiar:* C, C\#, C++, Go, React Native, Ruby, Shell, Scala, Spark, Hadoop, Apache Airflow, SVN
]
