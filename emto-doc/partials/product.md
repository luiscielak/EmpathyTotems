[Product](toc.md)
===

The purpose of the Empathy Totem system is to collect, track and display emotion data. The mission of the Empathy Totem system is to enable people to understand, share, and increase their level of empathy to one another. This is achieved within the system’s feedback loop below.

Empathy Totem system feedback loop:

1. Self-actualization of current emotional climate
2. Understanding and communication of our own emotional stream
3. Recognition of external emotions experienced by others around us
4. Relate ourselves to the feelings of others and provide compassion

Features
---

The Empathy Totem systems consists of two parts: 1) a mobile application for data entry, and 2) a physical structure hosting a multi-color LED as the system’s output.

The data is entered through a web-based mobile application representing the nine different emotional zones based on Mihaly Csikszentmihalyi research on ‘flow.’ This data is interpreted by a ratio correlating challenge degree to skill level. The system output consists of a mystical totem serving as a visual representation of a person’s empathy rate. The colors correlate to Csikszentmihalyi’s research diagram below.

The data received and interpreted by an Arduino micro-controller located inside the totem. The data is represented by an LED that constantly fluctuates through multiple color patters correlated to the user’s historical and current emotion data. This enables people to increase their emotional awareness level while communicating it across. The totem’s physical structure acts as an omnipresent reminder of a person’s emotional climate.

<!-- ![challange-skills_diagram](http://placehold.it/320x320) -->

Components
---

Hardware
- 1 Arduino Uno micro-controller 4 Wires
- 1 Breadboard
- 1 RGB LED
- 3 Resistors

Software
- Arduino
- Processing
- LAMP stack server

Functions
- Input emotion data from a mobile device
- Store emotion entries for further analysis
- Send emotion data to an Arduino microcontroller
- Receive emotion data from server
- Interpret emotion data and convert to empathy rate
- Represent empathy rate by using color, form, shape, and texture

Diagrams
---

### Data Flow

<!-- ![data-flow_diagram](http://placehold.it/640x120) -->

Emotion → Emotion Rate → Empathy Rate → Empathy Glow Application


### Application Stack

<!-- ![app-stack_diagram](http://placehold.it/640x120) -->

Linux → Apache → MySQL → PHP → Application


### Network Topology

<!-- ![network_diagram](http://placehold.it/640x120) -->

Application → Web Server → Processing → Arduino




Roadmap
---

The implementation roadmap consists of a schedule of 20 weeks divided in four phases (research, design, build, and test). The project is due to be complemented on May 8th, with a starting date of January 1st, 2014.

Each phase consists of a set of project milestones along with the corresponding tasks. This list is being logged in a [todo file](todo.md) and it is visually represented with a [Gantt chart](gantt.md).

Needs & Opportunities
---

Everyone feels, happy, angry, anxious and depressed sometimes. Paying attention on how we feel by using the tools available to us can help us grow as individuals and lead us to become happier human beings.

In order to achieve this, there is a need for people to learn how to notice and accept up and down mood patterns. Welcome emotions instead of burying them. Modify their environment to minimize well-being impact.

By tracking emotion data we are able to see changes day to day, and week by week. Encounter patterns and discover behaviors. When sharing emotion data we achieve a level of connectedness and a sense of community that improves the self-esteem.

<!--
### Threads

- Lack of well-designed mood tracking studies
- Scientists disagree on fundamental questions on whether we can experience more than one mood at the time, or whether we all experience emotions the same way
- Extreme moods may interfere with the tracking
- Sharing our constant stream of emotions puts us on a very vulnerable state
-->

### Needs

[needs section]


### Opportunities

[opportunities section]


Personas
---

Three main design personas have been identified in order to provide user-centric direction during the design process. These fictitious characters will also be used as a guide to identify people that can act as real users in order to perform testing and further project research.

- - -

<!-- Persona 1 -->

### Tanya

Grade school teacher. Resourceful, social, caring, smart.

<!-- ![persona-01_image](http://placehold.it/140x150) -->

**Purpose**

Illustrate how the simple and gradual struggles for couples can take a toll on their loving relationships. What if that gap can be sealed by providing better means of sharing each other's emotional streams. Acknowledge each other emotions, have empathy, and reciprocate accordingly.

**Environment**

School. Kindergarten. Classroom. Married. Grade school teacher goes to work in the morning. Married to a husband that works from home.

**Story**

The couple's relationship at home has been rocky. Tanya has her struggles at work, while her husband has his working from home. When the couple reunites at home after a journey's hard work their interactions are often a hit or miss.

There is a mismatch of his and hers good and bad days. Teaching little kids all day can be a hectic task for anybody. Tanya often times goes home stressed out and frustrated.

**Resolution**

Being able to communicate their stream of feelings through their devices and the objects around their environment. The couple has now being able to decipher the pattern to a successful relationship based on communication.

- - -

<!-- Persona 2 -->

### Melissa

Art student. Social, creative, mobile. Shy, not talkative but likes action.

<!-- ![persona-02_image](http://placehold.it/140x150) -->

**Purpose**

Demonstrate how dynamic the communication through the system flow can be from data input, information representation, and sharing capabilities.

**Environment**

College. Movie theater. 'Hanging' out areas.

**Story**

Melissa is able to communicate with her friends, family, and doctor. She is able to choose what emotion, and to whom and when to share them. She also has the choice to keep them to herself privately.

When Melissa was diagnosed with a bipolar mood disorder her doctors suggested to keep a log of her emotions as part of her treatment. This would allow them to help her understand her mood swings and communicate her emotions with the ones around her better.

<!-- Through the Empathy Totem system Melissa is now able to avoid forced interactions with others when she predicts a mood swing is about to occur. This is possible due to the fast and easy record-keeping solution through a mobile application. -->

**Resolution**

Melissa can easily share and keep track of her emotions through an application. This log-keeping technique has shown to reduce friction among family and friends of bi-polar disorder patients.

- - -

<!-- Persona 3 -->

### Javier

Software Developer. Smart, problem-solver, tech-oriented. Introverted, cool and reserved.

<!-- ![persona-03_image](http://placehold.it/140x150) -->

**Purpose**

Display the struggle of every-day people when trying to focus and communicate in a working environment. People surrounded by distractions and poor means of non-verbal communication are a cause of friction for the every-day working Joe.

**Environment**

Office. Cubicles. Meeting rooms.

**Story**

Javier is involved in his every-day routine. Everything looks like any other day. Constant interruptions. Lack of focus. Increasing stress levels.

As the high stress levels are about to overcome the protagonist, he finds a solution to his every-day problems. A device that will allow him to visually display his current emotional state communicating it to the ones near him. Allowing him to broadcast a 'free-to-chat' or a 'do-not-disturb' signal.

**Resolution**

As the protagonists adopts the Empathy Totems system for the office, a more productive, happier working environment is a common situation for the main character.

- - -

Business Goals
---

“Depression affects about 121 million people worldwide, with many more going undiagnosed, and is the leading cause of disability. Anxiety disorders touch 16% of people globally at some point in their lives.” [Ashford]

By utilizing the tools available to us in this modern world we can create means of tracking, understanding, and expressing ourselves more effectively. People who live with Bipolar Disorder use mood tracking methodologies to understand, mitigate, and decrease their mood swings.

The increased presence of mood tracking applications and physical devices such as Withings' body scale, Nike's fuel band, and Fitbit's step-tracker, is an indication of how the market for connected objects is unfolding.

Branding
---

The overall look and feel is organic yet technologically influenced. Polygons, low-poly aesthetic, crystallized objects, and minerals are good examples of the influences behind the brand's design decisions.

### Logo

The logo consists of a line drawing representing the totem's pyramid-like structure. This shape is pointing upwards implying a self-help motto influenced by the life-logging, quantified-self culture behind the project.

Branding elements will be generated with computer code. This generative approach will allow for more organic and personal content.

### Typography

Human-centric. Information-driven.

### Colors

[colors section]
