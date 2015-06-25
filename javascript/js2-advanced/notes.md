
# Advanced Javascript




---

# Course's Agenda

- ~~Javascript Basics~~
- **Advanced Javascript**
- **Introduction to the DOM**
- Easier DOM with jQuery
- Transitions and Animations
- Talking to the server with AJAX

---

# Today's Agenda

- Review Basics
- Methods
- Higher-order functions
- Timing functions
- Underscore.js
- What we missed
- Introduction to the DOM

---

# Review Basics

---

## Game


---

## Cheat Sheets

- Mitch's Cheat sheet
- MDN Cheat Sheet
  http://goo.gl/89Taee
- LearnXinY Cheat Sheet
  http://goo.gl/R1yXeo


---

## Variables

```js
var aString = "John";

var aNumber = 29;

var anArray = [1, 2, 3, 4];

var anObject = {a: 1, b: 2, c: 3};

var aFunction = function (a) {
  return 2 * a;
};
```

---

## If-Else

```js
if (age > 51) {
  console.log("Old!");
} else {
  console.log("Young!");
}

```

---

## While Loop

```js
while (i < 100) {
  console.log(i);
  i += 1;
}
```

---

## For Loop

```js
for (var i=0; i < 100; i+=1) {
  console.log(i);
}
```

---

## Objects

```js
var me = {
  name: 'Mitch',
  emotion: 'Excited!'
};

me.language = 'english';
```

---

## Functions

```js
var doubleIt = function (x) {
  return 2 * x;
};

doubleIt(5);
```

---

## Review Exercises

1. Write a function that takes any number, but always returns 0.

2. Write a function that takes a user object with 'name' and 'age' properties, and logs the string "[name] is [age] years old."

3. Write a function that takes a sentence, and returns an object of all the words and their lengths.
  `wordLengths("Hello world"); => { "Hello": 5, "world": 5 }`


---

## Demo

Write a function `chooseTeams` that takes a list of players and a number of teams, and forms random teams.



---


# `typeof`


---

# Methods


---

## Demo






---

## Exercise
## __Add a stop method to your car that logs "screeetch!" to the console.__

---

## `this`

---

## Demo


---

## Exercise

Change "stop" to have the following output:
"Screeeeetch!!" if speed is "fast"
"RRrch."        if speed is "medium"
"sh"            if speed is "slow"
"Yikes, I don't know how fast I'm going!!!" if speed is anything else.

__Stretch:__ If the speed is a number, output "Screetch!!" with that number of "e"s.

---

# Higher-order Functions




---

## Exercise

Write a function `call` which takes a number and a function as parameters, and returns the result of calling the function on the number.

```js
var doubleIt = function (x) {
  return 2 * x;
};
call(5, doubleIt); // => 10
```

__Stretch__ Make `call` take a third parameter, the number of times to call the function (e.g. `call(5, doubleIt, 2) == 20`)

---

## Anonymous Functions

```js
// Long...
var doubleIt = function (x) {
  return 2 * x;
};
call(5, doubleIt);

// Short...
call(5, function (x) {
  return 2 * x;
});
```

---

## Exercise

Write a function `map` which takes an array and a function as parameters, and returns an array where each item is the item in the original array with the function applied to it.

```js
var addOne = function (x) {
  return x + 1;
};
map([1, 2, 3], addOne); // [2, 3, 4]
```

__Stretch:__ The second parameter is an array of functions, apply all the functions one-by-one to the items in the array.

---

## Exercise

Use your `map` function to produce an array of squares of:

`[1, 2, 3, 4, 5, 6, 7, 8, 9]`

__Stretch:__ Use `map` to produce an array of the number of characters of each string in the following array:

`['hello', 'data', 'eat cheese', 'walking']`

---

## for-each method

```js
[1, 2, 3].forEach(function(i) {
  console.log(i);
});
```



---

## Demo


---

# Timing Functions



---

## `setTimeout`
## __Run some code later__

```js
setTimeout(function() {
  // code to run...
}, milliseconds);
```

---

## Demo


---

## Exercise

Change your page script to write to the page "Loading..." and then, 3 seconds later, "Hello, World!"

__Stretch:__ Make your page display "Ready...", then "Set...", then "Go!", one second after another.

---

## What will happen?

```js
var x = function () {
  console.log('.');
  setTimeout(x, 1000);
};

x();
```

---

## `setInterval`
## __Repeatedly run some code every N milliseconds__

```js
setInterval(function() {
  // code to run...
}, milliseconds);
```

---

## Demo


---

## Exercise

Make a counter using `setInterval`. Count from 1 up, every second.

__Stretch:__ Create two counters, one for even numbers and one for odd. Run them at the same time.

---

## What will happen?

```js
setInterval(function() {
  setInterval(function() {
    document.write('.');
  }, 1000);
}, 1000);
```

---

## `clearInterval`



---

## Demo

```js
var interval = setInterval(function () {
  console.log('.');
}, 1000);

clearInterval(interval);
```


---

## Exercise

Use `setInterval` to log '.' to the screen every 1 second. Stop after 10 seconds have passed.
_(Hint: Use `setTimeout` to stop things after 10 seconds)_

__Stretch:__ Build a blast-off countdown using `setInterval`.
  *10 9 8 7 6 5 4 3 2 1 Blast Off!*

---

# Underscore.js


- Library of useful functions missing from Javascript
- http://underscorejs.org/



---

## Demo



---

# Advanced Topics

---

## Scope



---

## `this`, `apply`, `call`

---

# What we missed

---

## Creating objects with `new`

```js
var Person = function(name) {
  this.name = name;
}

var person = new Person('Mitch');
```

---

## function declarations

```js
function doubleIt(x) {
  return 2 * x;
}

doubleIt(5);
```

---

# Introduction to the
# [fit] DOM

---

## The DOM is an API
## for your web page

---

# But what **is** the DOM?
# [fit] for serious

A collection of Javascript objects that represent the HTML document of the current page.

DOM objects contain methods for querying and manipulating web pages, and saying what should happen when the user makes certain actions.

e.g. "When the user clicks this button, make all the links red."


---

## What can you do with the DOM?

1. Make changes to the HTML after the page has loaded
2. Respond to a users actions (events)
3. Any combination of 1 and 2


---

## Real World Examples

- http://mealime.com
- http://next.mitchcrowe.com
- harmonikit https://dry-inlet-2631.herokuapp.com

---

## It all starts with `window`

- `window` is the is the global object and default receiver

- "global" functions and objects are actually properties of `window`

- `https://developer.mozilla.org/en-US/docs/Web/API/Window`



---

## An HTML Document

```html
<html>
  <head>
    <script>...</script>
    ...
  </head>
  <body>
    <h1>Title</h1>
    <a id='link' href="http://www.google.com">Link</a>
  </body>
</html>
```



---

> "The Document Object Model represents an HTML document as a tree of Javascript objects"



---

# DOM Basics





---

## Demo



    document.links[i].style.color = "red";
  }

---

# What you *need* to know

- All the basics (`if`, `for`, `function`, ...)
- Create a function that accepts another functions as an argument.
- Create an anonymous function as an argument to a function.
- How to use `setTimeout` and `setInterval`


---

1. Write a function that takes one parameter, a person's age. If the person is older than 50, return `'old'`. Otherwise, return `'young'`.

2. Write a function `forEach` that takes two parameters, an array and a function. It should call the function on each item in the array.

3. Write a function called `sayLater` that takes one parameter, a string. It should log the string to the console 5 seconds later.

4. [Stretch] Research how to loop over an object. Use this to count the number of properties that the `window` object has.



---

## Homework

---

# Next Time

##__Mastering the DOM with jQuery__
