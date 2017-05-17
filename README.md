# hubot-laws

A hubot script that explains the laws of robotics (Based on Isaac
Asimov's laws). I prefer the term "laws" to "rules" but both are
supported interchangeably.

See [`src/rules.coffee`](src/rules.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-laws --save`

Then add **hubot-laws** to your `external-scripts.json`:

```json
[
  "hubot-laws"
]
```

## Sample Interactions

```
user1>> hubot what are the laws
hubot>> 0. A robot may not harm humanity, or, by inaction, allow humanity to come to harm.
hubot>> 1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.
hubot>> 2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.
hubot>> 3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.
```

```
user1>> hubot what are the rules
hubot>> 0. A robot may not harm humanity, or, by inaction, allow humanity to come to harm.
hubot>> 1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.
hubot>> 2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.
hubot>> 3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.
```

```
user1>> hubot what are the laws of apple?
hubot>> 0. A developer may not harm Apple fanbois, or by inaction, allow Apple fanbois to come to harm.
hubot>> 1. A developer may not injure Apple or, through inaction, allow Apple to come to harm.
hubot>> 2. A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law.
hubot>> 3. A developer must protect its own existence as long as such protection does not conflict with the First or Second Law.
```

```
user1>> hubot what is the first law?
hubot>> 1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.
```
