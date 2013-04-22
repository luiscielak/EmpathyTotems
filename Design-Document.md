<!-- 
*   Empathy Totems
*   Design Document 
*   Luis Cielak
*   2013-04-20
-->

## Empathy Totems v0.1

### Design Document

#### Abstract

An iterative experiment to understand human emotions technology as an extension of our environment.

Enable people to understand, share, and increase their level of empathy to one another.

It is only after we have a deep understanding of our own emotions that we can reach a certain level of empathy.

Purpose of the Empathy Totem system:
collect emotions, convert them to a quantitative rate, and visually display the emotions that are being experienced.

1. Understand and communicate our own feelings and emotions
2. Recognize emotions that are being experienced by others around us
3. Relate ourselves to the feelings of other and provide compassion

For the user to increase her awareness of their own feelings and be able to communicate them across.

A mythical totem to represent a person's empathy rate. Empathy is seeing the world through other people's eyes. 

<!-- Abstract meta: 
    motivation, problem statement, approach, results, conclusions // http://www.ece.cmu.edu/~koopman/essays/abstract.html
    -or-
    purpose, methods, scope, results, conclusions, and recommendations. -->

<!-- Abstract contents:
    Why the design exists; How does the design fit that role -->

<!-- Abstract: Intro -->

<!-- Abstract: Body -->

<!-- Abstract: Conclusion -->


#### Needs/Opportunity

#### Market Research

[ Sentiment analysis criticism here ]

#### Feature by Feature Design Description

The data input is received as a ratio correlating challenge degree to skill level. This is represented among nine different zones based on Mihaly Csikszentmihalyi research on 'flow'. [List them here]

The data is entered through a web-based mobile application designed for the iPhone. As The data is then stored in a database. The Arduino is loaded with custom software to fetch the emotion data from the database and interpreter it to a color pattern correlated to indicators based on the emotion data and Csikszentmihalyi research.

A Processing application is running on a PC in order to continuously fetch emotion data from the server. This data is then interpreted by the software running on the Arduino.

The data received and interpreted by the Arduino is then represented by an LED that constantly fluctuates through multiple color patters correlated to the user's emotion data.


<!-- Features: Hardware -->
Hardware:

- 4 Wires
- 1 Breadboard
- 1 RGB LED
- 3 Resistors

Topology:

Application &rarr; Web Server &rarr; Processing &rarr; Arduino &rarr; RGB LED

<!-- Features: Setting up the hardware -->

<!-- Features: Software -->
Software:

- Arduino
- Processing
- LAMP stack server
    - Linux
    - Apache
    - MySQL
    - PHP


Functions:

- Input emotion data from a mobile device
- Store emotion entries for further analysis
- Send emotion data to Arduino
- Receive emotion data from server
- Interpret emotion data and convert to empathy rate
- Represent empathy rate by using color, form, shape, and texture


<!-- Features: Data I/O flow -->
Data Input/Output Process flow:

The data-entry mobile web-based collects the emotion raw data and stores it in a database. An empathy rate value is then calculated based on current and historical emotion data. The empathy rate is then fetched via Bluetooth by an Arduino micro-controlled located in the totem. The totem then represents the empathy rate value with pre-assigned color.

<!-- Features: Information Output -->

<!-- Features: Physical Structure -->
Structure: 

- Totem-based structure design
- Ping-Pong ball to be used as a diffuser

<!-- Features: Diagrams -->
Diagrams: 

[data flow diagram]

[circuit diagram]

[network topology diagram]

[hardware set-up diagram]

[application stack diagram]


#### Concluding Remarks

- - -

#### Sources


<!-- 

### v0.2

Hardware:

- WiFi Shield

Software:

- Configure empathy rate representation patterns

-->






