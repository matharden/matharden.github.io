---
layout: post
title:  "Roll the dice"
date:   2014-01-24 13:32:00
categories: micro project
---

At the weekend I was at a restaurant with my family and my son found a board game which he wanted to play. It was a simple Snakes and Ladders game, but the counters and dice were not available. To improvise we tore some paper and coloured it in for make counters and I downloaded an [iPhone app called Dice](https://itunes.apple.com/gb/app/dice/id429412843?mt=8) which did just what I needed.

This got me thinking; all I really needed was a random number from 1-6. Downloading an app, although rather convenient seemed overkill. Of course, with a quick [Google](https://www.google.co.uk/search?q=dice+rolling) it's easy to find a JavaScript random number generator. But this concept is hard to grasp as a 4 year old child. So I decided to make a light-weight dice rolling Web app which anyone could use, for free and accessible to all.

Also, this gave me a nice simple project to do on my iPhone using the very handy [Jsany](http://www.jsany.org/).

## JavaScript

To start with, the simplest random method I could find.

```javascript
~~(Math.random() * 6) + 1
```

The `random` method returns a floating-point pseudo-random number between 0 and 1. Don't rely on this for anything serious as it [can be calculated](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random), but it's good enough for this instance.

Multiplying the result of `random` by 6 - being the number sides on a dice - brings us to our number. The first `~` inverts the number's bits giving us a negative number, but it's also a handy track to round off to the nearest whole number. The second `~` makes it positive again. Plus 1 at the end, because JavaScript numbers are zero-based.

I want this project to be super-light. The best ways to achieve this is to resist adding dependancies like jQuery, which would be totally overkill. Only a little vanilla JavaScript is needed to create a listener for the click event, capture elements and create new ones.

Upon the click event, a new die face is created and given the class name of its number to provide a hook for the styling.

```javascript
var num = roll();
var face = document.createElement('li');
face.className = 'n'+num;
```

I then make the required amount of dots as nested list appended to the face. Again, each dot has a class.

```javascript
for(var x=0; x<num; x++) {
  var dot = document.createElement("li");
  dot.className = 'd'+x;
  dots.appendChild(dot);
}

face.appendChild(dots);
```

## Stylesheets

The CSS was fun to do. Once I started to put the dots in place it really came together. I played around with the positioning and size of the dots. Once I was happy with that I added each dot of each number in a clockwise order, with the centre dots of the odd numbers being last.

Everything is sized relative to the root element `.dice`, which means I can easily scale all the dice.

## Improvements

I'm happy enough with the result for now. Let's call it an MVP ;-) The next step is to make DRYer code and stick the assets in the HTML file to save HTTP requests. Then possibly make it better looking with animations and add some options, like dice per roll.

It can be seen at [http://matharden.github.io/roll-the-dice](http://matharden.github.io/roll-the-dice).





