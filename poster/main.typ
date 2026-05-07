#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge


#let primary-color = rgb("#D73F09")
#let panel-fill = luma(240)
#let header-height = 7.3245in

#set page(
  height: 36in,
  width: 48in,
  margin: (rest: .5in),
)

#set text(
  font: "Kievit Offc",
  size: 24pt,
  weight: "regular"
)

#set par(
  justify: true,
  leading: 1.2em,
  spacing: 1.2 * 2em,  // space *between* paragraphs
)

#show heading.where(level: 1): set text(
  font: "Stratum2",
  size: 36pt,
  weight: "bold",
)

#show heading.where(level: 2): set text(
  font: "Kievit Offc",
  size: 24pt,
)

#let panel(title: "", body) = block(
  inset: (x: 0.8em, y: 0.5em),
  radius: 4pt,
  above: .5em
)[
  #if title != "" {
    block(below: 1.3em)[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 0.5em,
        align: left + horizon,
        box(fill: primary-color, width: 0.4em, height: 1.5em),
        text(font: "Kievit Offc", size: 36pt, weight: "bold")[#title],
      )
    ]
  }
  #text(font: "Kievit Offc", size: 24pt, weight: "regular")[#body]
]

#let header(title, authors) = place(
  top + center,
  block(
    width: 100% - 2in,
    height: header-height,
    fill: primary-color,
    inset: (x: 2em, y: 2em),
    outset: (x: 1in),
    radius: 50pt,
  )[
    #set text(fill: white)
    #set align(center + horizon)
    #set par(spacing: 0.5em)


    #text(font: "Stratum2", size: 85pt, weight: "bold")[#title]

    #text(font: "Kievit Offc", size: 56pt, weight: "medium")[#authors]

    #place(
      top + right,
      dx: 0in,
      dy: 1in,
      image("logo.png", width: 4.5in),
    )
  ],
)

#header(
  [Writing for the Robot: How Perceived Grader Identity \
   Shapes Student Writing Behavior],
  [Dakota Roth & Regan A. R. Gurung \
   Oregon State University | Applied Social Cognition Lab],
)

#v(header-height)

#pad(rest: 1in, grid(
  columns: (1fr, 2fr, 1fr),
  column-gutter: 2em,
  [
    #panel(title: "Abstract")[
      AI-assisted grading is growing rapidly across higher education. Existing research focuses almost entirely on grader accuracy and student perceptions of fairness. No research examines whether students write differently when they believe an AI is evaluating them. In this study we test whether the identity of who is going to rate work will change the work done.  We aim to have a total sample size of 130 students who complete an essay either expecting to be graded by a human or AI. Our results will have implications for the the design of pedagogical assessments and student learning. 
    ]
    #panel(title: "Introduction")[
      Large language models (LLMs) are rapidly reshaping education, with students using them for writing and institutions using them for grading. This study investigates whether knowing an AI will grade their work changes how students write, raising concerns that AI grading could unintentionally influence student writing styles. No study has examined this.
      Students write with greater quality and effort when their audience feels close and familiar. Audience aware writing is driven by the perceived reader, not necessarily who is actually reading. 

      
      The Computers Are Social Actors model (CASA) states that humans unconsciously apply social rules and heuristics to computers in the same way they would to another person. This suggests an AI grader would register not as a passive evaluator but as a distinct kind of reader, potentially triggering the same audience-adjustment behavior seen in writing research.      
    ]
     #panel(title: "Method")[
      We randomly assigned participants to two groups and asked to write a 300 word short essay. Each group was provided a rubric and was told that their response would be evaluated by either an "AI grading system" or a "research teaching assistant" as part of the studies procedure. Scales including AIAS-4 were used at the end to evaluate attitudes towards AI and AI grading systems.
      
      Text responses were analyzed using Empath (Fast et al., 2016), an open-source text analysis tool that categorizes language across approximately 200 lexical categories, functioning similarly to LIWC (Pennebaker et al., 2015). Empath was used to generate category scores for each essay across dimensions relevant to audience-aware writing, including social language, hedging, positive and negative emotion, certainty, and politeness. Mean category scores were then compared between the AI and human grader conditions to identify differences in linguistic style.
      
      
    ]
  ],
  [
    #v(1em)
      #panel(title: "Method Continued")[       
      Essays were scored independently by two human raters using the provided rubric. Additionally, essays were evaluated using AI grading tools both with and without the rubric provided as scoring criteria, allowing for comparison of human and AI scoring consistency.  Data collection is currently in progress and we expect to have our complete sample by the end of the term.
    ]
      #panel()[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 3em,
    align: center + horizon,
    [
      #block()[
        #text(weight: "bold", size: 28pt)[Study Flow]
        #v(0.3em)
        #diagram(
          node-stroke: 1pt,
          node((0,0), [Survey Start], corner-radius: 2pt),
          edge("sw","-|>"),
          edge("se","-|>"),
          node((-1,1),[AI Grader]),
          edge("se","-|>"),
          node((1,1),[Human Grader]),
          edge("sw","-|>"),
          node((0,2), [Post Writing Scales]),
          edge("-|>"),
          node((0,3), [Survey End])
        )
      ]
    ],
    [     
    #block()[
       #text(weight: "bold", size: 28pt)[Rubric]
        #v(0.3em)
        #block()[
          #set text(size: 16pt)
          #set par(leading: 0.5em)
          #table(columns: (auto, 1fr, 1fr, 1fr),
          inset: 0.4em,
          align: center,
          [Category], [0], [1], [2],
            [Thesis], [No clear position], [Position present but vague or not defensible], [Clear, specific, defensible claim],
            [Evidence & Reasoning], [No supporting evidence], [Evidence present but connection to argument unexplained], [Evidence clearly supports and is connected to thesis],
            [Explanation & Development], [Ideas undeveloped], [Some development but surface-level], [Ideas meaningfully developed beyond the obvious],
            [Writing Quality], [Significant errors impede understanding], [Some errors but meaning is clear], [Clear, organized, grammatically competent]
          )
        ]
      ]
    ]
  )
]
    #panel(title: "Expected Outcomes")[
      We did not analyze preliminary data. When data collection is complete, we expect to see a match effect where essays score higher when the grader matches the intended audience. Specifically, essays written for the human evaluator are expected to contain more personal and social language. We believe these are qualities human raters tend to reward. (CITE) Essays written for the AI grader are expected to be more rigid and rubric-adherent, aligning with the structured evaluation style students may associate with AI.
      
      Furthermore, we expect participants with negative AIAS-4 scores who received the AI grader prompt to produce essays that score lower with AI graders but higher with human raters, compared to those with positive AIAS-4 scores in the same condition. We predict negative attitudes toward AI may reduce a writer's willingness to adjust their style for an AI audience.
      
     We expect lexical categories related to social and interpersonal language such as politeness, affection, and positive emotion to show the largest differences between conditions.
      Overall, we expect the human grader group to produce higher quality essays, as writing for a human audience may generate stronger intrinsic motivation to engage meaningfully with the task.
    ]
    #panel(title: "Implications")[
      There are many studies of student and faculty perception of AI usage and while most classes forbid the use of AI for assignments, national survey results suggest many students use AI (Freeman, 2025). The extent to which students use AI and how it influences their learning may depend on many factors but students may write differently if they think AI will grade them.
      
      If students write differently based on who they think is grading, then AI grading is not a neutral substitute for human evaluation. It would become an active influence on how students learn to write. Widespread adoption could push student writing toward an unoriginal, rubric-optimized style at the expense of individual voice and rhetorical engagement. As AI becomes more prevalent across communication contexts, the ability to write with a distinct and authentic voice may become increasingly valuable, making this a concern worth systematic investigation.  
    ]
  ],
  [
    
    #panel(title: "Limitations")[
      If we do not hit our expected sample size we run the risk of bein underpowered. A small sample size and the online survey format draws many limitations. We are unable to control for surrounding environment during the writing task due to being online, and participants could take the writing task less seriously. Furthermore, 300 word responses may not be enough information to glean meaningful differences in writing style. Empath is counting word categories across only 300 words per essay, a pretty small text sample for lexical analysis to produce reliable category scores. 
      
      Participants were explicitly told who their grader was, which may not reflect real classroom settings where students are not always aware whether their work is evaluated by a human or an AI. Lastly, participants were explicitly told who their grader was in a low-stakes survey context, which may not reflect real classroom settings where grading outcomes carry meaningful consequences and students are not always aware whether their work is evaluated by a human or an AI.
    ]
    #panel(title: "Future Directions")[
      Replicating this study in a classroom setting with real grading stakes would be the natural next step. 
      Having a larger sample size and larger essay length or multiple essays throughout a term could help determine long term effects of an atypical grader identity. Modifying the manipulation so that students naturally discover their grader's identity could also produce different results. When the stakes are real grades, we would expect that opinions on AI grading would be far more polarized than what's represented by the AIAS-4.       
      A more modern text analysis approach could capture nuances in tone and rhetorical strategy that Empath's category-based scoring may miss.
    ]
    #panel(title: "Conclusion")[
      The effects of AI grading systems on student writing remain largely unstudied. If students adjust their writing based on perceived grader identity, institutions adopting AI grading may be shaping writing development in ways that have not yet been measured. These changes are not necessarily negative, but they should be understood and considered by universities to ensure that grading practices align with the outcomes they hope to see in student writers
    ]
    #panel(title: "Acknowledgements")[
      Thank you Dr. Gurung, Applied Social Cognition Lab, and URSA Engage for funding.
    ]
    *References available on request*
  ],
))
