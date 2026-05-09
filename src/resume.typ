// ---- Page & font setup ----
#set page(margin: (x: 0.75cm, y: 0.65cm), paper: "us-letter")
#set text(font: "Times New Roman", size: 9.5pt)
#set par(justify: true, leading: 0.7em)
#show list: set block(above: 0.5em, below: 0pt)
#set list(spacing: 0.5em, indent: 0.5em)
#show link: underline

// ---- Helper functions ----
#let header-rule() = {
  v(1pt)
  line(length: 100%, stroke: 0.5pt)
  v(0pt)
}

#let section(title) = {
  v(10pt)
  text(size: 10.5pt, weight: "bold", upper(title))
  header-rule()
}

#let entry(left, right) = {
  block(width: 100%, above: 6pt, below: 0pt)[
    #left #h(1fr) #emph(right)
  ]
}

// ---- Header ----
#align(center)[
  #text(size: 18pt, weight: "bold")[Yi Shi]
  #v(1pt)
  #text(size: 9.5pt)[
    #link("mailto:shiyivicaaa@gmail.com")[shiyivicaaa\@gmail.com] |
    617-259-7715 |
    Boston, MA |
    #link("https://linkedin.com/in/shiyivic/")[LinkedIn]
  ]
]

// ---- Experience ----
#section("Experience")

#entry(
  [*Software Development Engineer* | TDK SensEI, Pittsburgh, PA],
  [Jun 2025 -- Aug 2025],
)
- Designed and maintained a production-grade *GenAI*-driven anomaly prediction service, integrating *ML inference* into backend services to proactively detect manufacturing failures and reduce operational downtime.
- Built scalable anomaly detection pipelines using *AWS Bedrock*, *Lambda*, *Amazon S3*, and *DocumentDB*, processing high-frequency sensor data with 99%+ precision and production-level reliability.
- Developed a real-time monitoring and alerting system using *React.js*, *Express.js*, and *RESTful APIs*, enabling low-latency visualization of live sensor metrics, anomaly scores, and system health diagnostics.
- Refactored inference and request-handling pipelines by migrating from Bedrock-based inference to *SmolAgent* and *LangChain*, reducing response latency and improving system throughput under load.
- Implemented *AWS Lambda* cloud functions in *JavaScript* to process and orchestrate data from the *AWS S3* Bucket.
- Built synthetic data generation and load-testing frameworks to validate system behavior under edge cases, reducing end-to-end pipeline runtime by 95% and improving system stability.

#entry(
  [*Software Development Engineer* | Shawk Solution, Spokane, WA],
  [Jan 2025 -- Apr 2025],
)
- Designed and maintained a production-ready *Gemini*-based querying service AI agent, exposing backend APIs to support natural-language access across structured and unstructured data sources.
- Built and scaled a monorepo frontend architecture using *React*, *Vite*, *Tailwind CSS*, and *Nx*, and collaborated with UI/UX teams via *Figma* and *Miro* to deliver responsive interfaces and improve information retrieval efficiency.
- Refactored the *Express* backend from *Node.js* to the *Bun* runtime, increasing request throughput by 40% and reducing average response time under concurrent load.
- Implemented secure, stateless authentication and authorization using *JWT*-based middleware and *GraphQL* APIs, enabling role-based access control and backend API security across 5+ endpoints.
- Integrated *Pinecone* vector database into the request-processing pipeline, optimizing embedding retrieval and reducing end-to-end response latency by 30%, improving overall system responsiveness and user experience.

#entry(
  [*Full Stack Software Development Engineer* | Urban Surveyors, Shanghai, China],
  [May 2024 -- Aug 2024],
)
- Engineered a real-time interactive *ArcGIS*-based land management system for clients to visualize and manage their properties.
- Developed dashboard & map features with *Vue.js*, *HTML*, *CSS*, & *TypeScript*; optimized component rendering with *Vuex*, reducing overall LCP, INP, and CLS by 20%.
- Built backend using *Java* & *Spring Boot*, designed *RESTful APIs* for authentication & data management using *Spring Security*.
- Optimized database performance by implementing *Redis* caching above *MySQL*, speeding up API response times by 15%.
- Spearheaded a VR app for building exhibition using *Unity* & *C\#*, delivered immersive experiences with interactive environments, 3D models & cross-platform support with *Unity XR Toolkit*, *Oculus* & *Pico SDK* for 1000+ users.

#entry(
  [*Software Development Engineer* | Joblogic-X Corporation, Plano, TX / Remote],
  [Jun 2021 -- Feb 2023],
)
- Upgraded and maintained the *CI/CD* pipeline for the carbon trading platform, improving deployment reliability and release velocity.
- Optimized backend workflows and containerized all services with *Docker*; deployed fault-tolerant microservices using *Kubernetes* DaemonSets and RollingUpdate strategies, ensuring zero-downtime releases.
- Implemented *MongoDB* for logging storage & *Elasticsearch* for efficient search, enhancing system auditing and data retrieval.
- Set up test suite with *Pylint*, *Pytest*, *Selenium* & *Jest*, ensuring reliability & seamless user experience.
- Developed real-time data visualization dashboards & responsive interactive chart pages with *Python*, *Flask* & *Dash*.
- Optimized data processing by refactoring the pipeline using *AWS S3* + *EMR* with *Airflow* for job orchestration & *Parquet* for efficient storage, achieving 12x faster data processing.
- Enhanced data retrieval & reduced load using *Elasticsearch* for efficient full-text search in high-concurrency environments.
- Built and maintained a carbon trading platform with real-time analytics and an optimized search algorithm in *AWS*; processed large-scale datasets via *Spark*, *DataFrames* & *Spark SQL*.

// ---- Education ----
#section("Education")

#entry(
  [*Northeastern University* -- Master of Science in Computer Science],
  [Boston, MA | Dec 2025],
)
#entry(
  [*Denison University* -- Bachelor of Science in Biology; Computer Science Minor; Art Studio Minor],
  [Columbus, OH | Jun 2021],
)

// ---- Skills ----
#section("Skills")

#block(above: 6pt, below: 0pt)[
  *Expert:* Java, Python, MySQL, MongoDB, PostgreSQL, Redis, Amazon DynamoDB, SQL Server, React.js, Node.js \
  *Proficient:* Spring Boot, Spring Cloud, Flask, Django, Next.js, Vue.js, Express.js, Angular.js, MyBatis, TypeScript, JavaScript, AWS, Docker, Kubernetes \
  *Familiar:* C, C\#, C++, Golang, Ruby, Shell, Scala, Spark, Hadoop, Apache Airflow, SVN
]
