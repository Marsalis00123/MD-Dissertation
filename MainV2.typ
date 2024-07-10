#import "Templatev2.typ": tpl
#set text(lang: "ro")


// #show: tpl.with(
  //bibliography: bibliography("My_Library.bib", style: "vancouver"),
//)

= Introducere

Status: Upcoming
Type: Draft

= Introduction

The rapid advancements in medical imaging technology have significantly enhanced diagnostic capabilities, particularly in the field of cardiology. Among these advancements, cardiac gating computed tomography (CT) has emerged as a pivotal tool in the assessment and management of various cardiac conditions @PediatricCardiacGatedCT2007. This imaging technique is especially beneficial in evaluating patients with pacemakers, who present unique challenges due to the presence of the device and its potential interference with imaging quality. This thesis aims to explore the efficacy and safety of cardiac gating CT in patients with pacemakers, examining the technological considerations, clinical applications, and potential risks associated with its use.

== Background and Rationale

Cardiac gating CT is a specialized imaging modality that synchronizes image acquisition with the cardiac cycle, thereby reducing motion artifacts and enhancing image clarity. This technique is particularly valuable in visualizing coronary arteries, cardiac chambers, and myocardial tissue with high precision @CoronaryArteriesRetrospective1997. However, the presence of pacemakers introduces additional complexities, such as metallic artifacts and potential electromagnetic interference, which can compromise image quality and diagnostic accuracy. Despite these challenges, the increasing prevalence of pacemakers, driven by an aging population and rising incidence of cardiac arrhythmias, necessitates a thorough investigation into the compatibility and optimization of cardiac gating CT for these patients.



== Clinical Significance

Understanding the interactions between cardiac gating CT and pacemakers is crucial for several reasons. First, accurate imaging is essential for diagnosing and managing cardiovascular diseases in pacemaker patients, as it directly impacts treatment decisions and outcomes. Second, ensuring the safety of pacemaker function during CT imaging is paramount to prevent device malfunction and adverse patient events. This thesis will review current guidelines, technological adaptations, and clinical protocols aimed at minimizing risks and enhancing the diagnostic utility of cardiac gating CT in this patient population. Additionally, it will highlight recent advancements and future directions in imaging technology that hold promise for overcoming existing limitations.

Through a comprehensive analysis of existing literature and clinical data, this thesis seeks to provide a detailed understanding of the intersection between cardiac gating CT and pacemaker technology, offering insights into best practices and potential areas for further research.








= Adult onset leukoencephalopathy with axonal spheroids and pigmented glia (ALSP)

Scientific writing is a crucial part of the research process, allowing researchers to share their findings with the wider scientific community in fornt of  @dam. However, the process of typesetting scientific documents can often be a frustrating and time-consuming affair, particularly when using outdated tools such as LaTeX. Despite being over 30 years old, it remains a popular choice for scientific writing due to its power and flexibility. However, it also comes with a steep learning curve, complex syntax, and long compile times, leading to frustration and despair for many researchers.
#figure(
  image("Files/Ruptured dam.jpeg", width: 80%),
  caption: [A curious figure.],
  kind: image
  
) <dam>

== Paper overview
In this paper we introduce Typst, a new typesetting system designed to streamline the scientific writing process and provide researchers with a fast, efficient, and easy-to-use alternative to existing systems. Our goal is to shake up the status quo and offer researchers a better way to approach scientific writing.

#figure(
  image("Files/T2_atrophy1.jpg", width: 80%),
  caption: [A curious table.], 
  kind: table
  
)<T2_atrophy1>

By leveraging advanced algorithms and a user-friendly interface, Typst offers several advantages over existing typesetting systems, including faster document creation, simplified syntax, and increased ease-of-use @T2_atrophy1.

#grid(
  columns: 2,
  gutter: 5pt,
  [#figure(
    image("Files/T2_atrophy1.jpg", width: 96%),
    caption: [T2 atrophy example.],
    kind: image,
  )<fig-grid1>
  ], 
  [#figure(
    image("Files/Coronal Flair.jpg", width: 95%),
    caption: [A coronal Flair view.],
    kind: image,
  )<fig-grid2>],
)<t2-tag>
To demonstrate potential of Typst, we conducted a series of experiments comparing it to other popular typesetting systems, including LaTeX. Our findings suggest that Typst offers several benefits for scientific writing, particularly for novice users who may struggle with the complexities @fig-grid2 of LaTeX. Additionally, we demonstrate that Typst offers advanced features for experienced users, allowing for greater customization and flexibility in document creation @fig-grid1.

Overall, we believe that Typst represents a significant step forward in the field of scientific writing and typesetting, providing researchers with a valuable tool to streamline their workflow and focus on what really matters: their research. In the following sections, we will introduce Typst in more detail and provide evidence for its superiority over other typesetting systems in a variety of scenarios.

#lorem(200)
= Methods
#lorem(90)

$ a + b = gamma $

#lorem(200)
= Interpretarea datelor
This is a new section at the end
So now we do more typst stuff:W

#bibliography("My_Library.bib", style: "vancouver")
