<!-- 
*   Empathy Totems
*   Design Document 
*   Luis Cielak
*   2013-04-20
-->

## Empathy Totems v0.1

### Design Document

#### Abstract

<!-- Abstract: Why does the design exists? -->

This project investigates how people can gain a better understanding of human emotions by interacting with data systems as part of their environment.

In everyday life we receive and emit information rooted to our internal emotional network. Often times our expression of these subconscious emotions is abstract, and has little or no value during heated relationship arguments.

It is only after we have a deep understanding of our own emotions that we can reach a certain level of empathy. Empathy is seeing the world through other people's eyes [cite needed]. This is an important step in the path of accomplishing long-lasting human relationships.

<!-- Abstract: How does the design fit the role? -->

Purpose of the Empathy Totem system:

To collect emotion data, convert them to a quantitative rate, and visually display the emotions that are being experienced. 

Mission of the Empathy Totem system:

To enable people to understand, share, and increase their level of empathy to one another.

Feedback loop within the Empathy Totem system:

1. Self-actualization of current emotional climate
2. Understanding and communication of our own emotional stream
3. Recognizing external emotions that are being experienced by others around us
4. Relate ourselves to the feelings of others and provide compassion

The system output consists of a mythical totem serves as a visual representation of a person's empathy rate. This enables people to increase their emotional awareness level and communicate them across. The totem's physical structure acts as an omnipresent reminder of inner emotions.

<!-- Abstract meta: 
    motivation, problem statement, approach, results, conclusions // http://www.ece.cmu.edu/~koopman/essays/abstract.html
    -or-
    purpose, methods, scope, results, conclusions, and recommendations. -->

<!-- Abstract contents:
    Why the design exists; How does the design fit that role -->

<!-- Abstract: Intro -->

<!-- Abstract: Body -->

<!-- Abstract: Conclusion -->


#### Need/Opportunity

[Human sadness & fast-paced world buzzkill statements here]

#### Market Research

[Sentiment analysis criticism here and how it sucks so much]

#### Feature by Feature Design Description

The data input is received as a ratio correlating challenge degree to skill level. This is represented among nine different zones based on Mihaly Csikszentmihalyi research on 'flow'. [List them here], [and cite]

The data is entered through a web-based mobile application optimized for the iPhone. As The data is then stored in a database. The Arduino is loaded with custom software to fetch the emotion values from the database and interpreter it to a color palette correlated to indicators based on the emotion data and Csikszentmihalyi research. [add some other color theory shenanigans]

A Processing application is running on a PC in order to continuously fetch emotion data from the server. This data is then interpreted by the software running on the Arduino.

The data received and interpreted by the Arduino is then represented by an LED that constantly fluctuates through multiple color patters correlated to the user's historical and current emotion data.


<!-- Features: Hardware -->
Hardware:

- 1 Arduino Uno micro-controller
- 1 Bluetooth Arduino shield
- 4 Wires
- 1 Breadboard
- 1 RGB LED
- 3 Resistors
- 1 9v Battery
- 1 9v Battery Arduino Adapter


<!-- Features: Hardware Setup -->
Hardware Setup:

[info here]

<!-- Features: Software -->
Software:

- Arduino
- Processing
- LAMP stack server
    - Linux
    - Apache
    - MySQL
    - PHP

<!-- Features: Software Functions -->
Functions:

- Input emotion data from a mobile device
- Store emotion entries for further analysis
- Send emotion data to Arduino
- Receive emotion data from server
- Interpret emotion data and convert to empathy rate
- Represent empathy rate by using color, form, shape, and texture


<!-- Features: Data I/O flow -->
Data Input/Output Process flow:

The Empathy Totems mobile web app collects the emotion raw data and stores it in a database. An empathy rate value is then calculated based on current and historical emotion data. The empathy rate is then fetched via Bluetooth by an Arduino micro-controlled located in the totem. The totem then represents an empathy glow based on a correlating color palette.

<!-- Features: Physical Structure -->
Structure: 

- Totem-based structure design
- Low-poly themed aesthetic
- Ping-Pong ball as LED diffuser

<!-- Diagrams -->
####  Diagrams: 

Data flow:

Emotion &rarr; Emotion Rate &rarr; Empathy Rate &rarr; Empathy Glow

Circuit:

[circuit diagram]

Network Topology:

Application &rarr; Web Server &rarr; Processing &rarr; Arduino

Hardware set-up:

[hardware set-up diagram]

Application Stack:

Linux &rarr; Apache &rarr; MySQL &rarr; PHP &rarr; Application


#### Concluding Remarks

<!-- Personal postmortem -->
Personal postmortem:

[knock yourself out]

Version 0.2:

[list them here]

- - -



## Press Pack

Empathy Totems

The world's first smart totem to track, analyze and represent emotion data.

Let's improve the quality of human lifeform.

##### Content

- Struggles of an everyday life
- The product
- Product features
- Photos
- About

##### Struggles of an everyday life

[Quotes, paradoxes and existentialist goodies here]

[significant stats]

30% of [bla, bla, bla] can be [bla, bla,bla] 125 times more than [more bla]

[some sad story on depression or some other human nonsense]

Why is it important to monitor your emotion rate? A higher [bla, bla] can be a sign of [more babbling] over [something or other].


##### The Product

The world's first smart totem to track, analyze and represent emotion data.

<!-- For a happier life :) -->

*For happier humans :)*

- First totem with human emotion rate monitoring
- High accuracy happiness tracking based on the Experience Sampling Method (ESM)
- Free app to monitor, visualize, and understand your emotional patterns
- Automatic upload readings over Bluetooth


The human emotion tracking totem

- Emotions and feelings tracking
- Empathy levels measurement and analysis
- Openness in communication channels with loved ones
- Wireless sync via Bluetooth

##### Product Features

- Data input mobile app for constant and accurate data gathering.
- Data entry implementation based on the Experience Sampling Method (ESM), an electronic paging approach to study happiness. [Hektner, Csikszentmihalyi]
- Automatic data synchronization. Constant and up-to-date empathy rate visual representation.
- Seamless connectivity. Bluetooth for easy setup and hassle-free data transfers.

##### Photos

##### About

- - -

##### Intro

Sensors:

- Emotion rate sensor (patent pending)

Apps:

- Empathy Totems web-app iOS optimized
- Native iOS and Android (v.02)

Wireless sync:

- Bluetooth connectivity compatible with Mac, Windows, and Linux

Dimensions:

- 00.0x00.0x00.0cm

Power:

- 1 9V Alkaline batter

Weight:

- 0.0 kg

Requirements:

- Bluetooth-enabled PC (Mac, Windows, Linux)
- Wi-Fi home network


- - -



#### Sources


<!-- 

### Notes:

Einfühlungsvermögen -> Empathy
	
	[ ] http://en.wikipedia.org/wiki/Empathy


- - -

-->



<!-- 

### v0.2

Hardware:

- WiFi Shield

Software:

- Configure empathy rate representation patterns

Enclosure:

- 

-->








