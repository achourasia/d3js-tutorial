empty_svg = ->
  d3.select('div.output')
    .append('svg')
    .attr("width", 500)
    .attr("height", 666)

shapes = ->
  svg = d3.select('div.output')
    .append('svg')
    .attr("width", 400)
    .attr("height", 300);

  svg.append("circle")
    .attr("class", "myCircles")
    .attr("id", "circle_top")
    .attr("cx", 40)
    .attr("cy", 60)
    .attr("r", 30);

  svg.append("circle")
    .attr("class", "myCircles")
    .attr("id", "circle_bottom")
    .attr("cx", 40)
    .attr("cy", 120)
    .attr("r", 20);

  svg.append("rect")
    .attr("x", 100)
    .attr("y", 60)
    .attr("width", 30)
    .attr("height", 50)
    .style("fill", "orange");

  svg.append("line")
    .attr("x2", 250)
    .attr("y2", 90)
    .attr("x1", 150)
    .attr("y1", 60)
    .attr("stroke", "black")
    .attr("stroke-width", 2);


circles3 = ->
  svg = d3.select('div.output')
    .append('svg')
    .attr("width", 400)
    .attr("height", 300)

  svg.append("circle")
    .attr("cx", 40)
    .attr("cy", 60)
    .attr("r", 10)

  svg.append("circle")
    .attr("cx", 140)
    .attr("cy", 60)
    .attr("r", 10)

  svg.append("circle")
    .attr("cx", 240)
    .attr("cy", 60)
    .attr("r", 10)



rect1 = ->
  svg = d3.select('div.output')
    .append('svg')

  svg.append("rect")
    .attr("x", 150)
    .attr("y", 100)
    .attr("width", 60)
    .attr("height", 300)


rect3 = ->
  svg = d3.select('div.output')
    .append('svg')

  svg.append("rect")
    .attr("x", 200)
    .attr("y", 300)
    .attr("width", 40)
    .attr("height", 50)

  svg.append("rect")
    .attr("x", 100)
    .attr("y", 20)
    .attr("width", 30)
    .attr("height", 50)

  svg.append("rect")
    .attr("x", 10)
    .attr("y", 200)
    .attr("width", 25)
    .attr("height", 90)

# ----------------------------------------------------

slide.title "A basic understanding of JavaScript will save you a lot of pain when you go to build something"


slide.code "JavaScript Basics", null, """
  // Single line comments can be written like this

  /* 
    And multi-line comments like this
  */

  // To print output we use console.log()
  console.log("Hello World!");

  // Whitespace (including newlines) is ignored so..
  console.log("Single line");

  // is the same as
  console
      .log(
               "Not a single line"     );

  // Statements are ended with semi-colons
  console.log("So we can"); console.log("do this");
"""

slide.code "JavaScript Variables: Numbers", null, """
  // Javascript variables are defined with 'let' and 'var'

  // A variable declared with 'let' can only be accessed
  // in the scope it's declared

  // A variable declared with 'var' can be accessed
  // outsude the scope
  // Example - Within a for-loop

  // Javascript constants are defined with 'const'
  // Constants cannot be re-assigned

  // Javascript variables are dynamically typed (like python)

  // Their names must start with a alphabetic 
  // character and can consist of integers
  // and underscores

  // There is only one number type (float64)
  let age = 45;

  // There is no integer type, so there is no
  // worry of integer division (python 2)
  // or integer overflow
  console.log("45 = ", 45);
  console.log("45.0 = ", 45.0);

  // Scientific notation is achieved with 'e'
  // xey = x * 10^y
  console.log("1e+1 = ", 1e+1);
  console.log("1e+2 = ", 1e+2);
  console.log("1e-2 = ", 1e-2);

  // Javascript also defines any number larger
  // than 1.7976931348623157e+308 as infinity
  console.log(1.79769313486231570e+308);
  console.log("Anything >= 1.8e+308 = ", 1.8e+308);
"""

slide.code "JavaScript Variables: Strings", null, """
  // Strings work about the same as python
  // You can use " " or '' to define them:
  let name = "Bojack";
  let lastName = 'Horseman';

  // We can concatenate strings with + 
  console.log(name + " " + lastName);

  // And \\ is the escape character 
  console.log(name + " is \\"great\\"");

  // We can also mix quotes for the same effect
  console.log(name + ' is "great"');

  // Multi-line strings require you escape
  // the carridge-return:
  console.log("Multi \\
  .............Line");

  // We can also use + to convert strings to numbers
  let numString = +"55";
  console.log(numString + 1);

  let stringNum = "55";
  console.log(stringNum + 1);

  // We can also check the type of a variable
  // with the typeof operator
  console.log("numString is a " + typeof numString);
  console.log("stringNum is a " + typeof stringNum);
"""

slide.code "Template Literals", null, """
  // Cleaner way to concatenate strings
  // Uses ``
  // Use ${<variable-name>} in the middle of template literals
  let name = "Bojack";
  let lastName = 'Horseman';

  // We can concatenate strings with + 
  console.log(`${name} ${lastName}`);
  console.log(`First name: ${name}, Last name: ${lastName}`);

  // More succint syntax compared to concatenation with "+"
  // We will use template literals in this tutorials in many places
  // instead of "+" to concatenate strings
"""

slide.code "JavaScript Arrays", null, """
  // Arrays are squences of elements with integer
  // property names:

  let empty = [];

  let numbers = [
     'zero', 'one', 'two', 'three', 'four',
     'five', 'six', 'seven', 'eight', 'nine'
  ];
  
  console.log("empty[1] = " + empty[1]);
  console.log("numbers[1] = ", numbers[1]);

  // We can also index with strings
  console.log("numbers['1'] = ", numbers['1']);

  // Arrays can hold any mixture of values
  let misc = [
         'string', 98.6, true, false, null, undefined,
         ['nested', 'array'], {object: true}, NaN,
         Infinity
     ];
  
  // Arrays also have a useful length attribute
  console.log("empty.length = " + empty.length);
  console.log("numbers.length = " + numbers.length);
  console.log("misc.length = " + misc.length);
"""


slide.code "JavaScript Array Methods", null, """
// Arrays have a set of methods which are included:
let a = ['a', 'b', 'c'];
let b = ['x', 'y', 'z'];

// Concat:
let c = a.concat(b, true);
console.log("a.concat(b, true) = ", c);

// Pop:
c = a.pop();
console.log("a.pop() =", c);
console.log("a = ", a);

// Push:
c = a.push('d');
console.log("a.push() =", c); // new length
console.log("a = ", a);

// Slice:
a = [1,2,3,4,5,6];
let a_end = a.slice(2);
let a_mid = a.slice(2,4);
console.log("a.slice(2): ", a_end);
console.log("a.slice(2,4): " + a_mid);

// Filter:
a = [1,4,8,10,3,12,2];
let a_big = a.filter(function (d) {return d > 9;});
console.log("a.filter(function (d) {return d > 9;}) = ", a_big);

// And many more...
// array.reverse()
// array.sort()
// array.shift()
// array.splice()
"""


slide.code "JavaScript Objects", null, """
// Objects are defined with curly braces 
// surrounding zero or more name/value pairs
let empty_object = {};

// Names can be specified with or without quotes
let actor = {
     "first-name": "Bojack",
     last_name: "Horseman"
     };

// Values can be anything, including objects
let course = {
    title: "Data Visualization",
    dept: "DSE",
    number: 241,
    professor: {
        first_name: "Amit",
        last_name: "Chourasia"
      }
  };

// Values are retrieved by wrapping the string
// name in [] or using . notation for legal
// Javascript names
console.log(actor["first-name"], actor.last_name);
console.log(course.title, course.number);

"""


slide.code "JavaScript Objects", null, """
let course = {
    title: "Data Visualization",
    dept: "DSE",
    number: 241,
    professor: {
        first_name: "Amit",
        last_name: "Chourasia"
      }
  };

// Object properties can be replaced
course.title = "Computer Stuff";

// Or if they dont exist, they will be created
course.room = "Dungeon";
console.log("course.room:", course.room);

// Also note objects are always passed by 
// reference and never copied
let course2 = course;
course2.room = "Above Ground!"

console.log("course.room: ", course.room);
console.log("course2.room: ", course2.room);

// Properties can be deleted
delete course.room;
"""

slide.code "Operations and Comparisons", null, """
// Application of operators follows standard
// order of operations:
// . [] ()       Accessing & grouping
// * / %         Mul, Div, Mod
// + -           Add, Subtract
// >= <= > <     Ineqality
// === !==       Equal-to, NEQ
// &&            Logical AND
// ||            Logical OR
// ?:            Ternary
console.log(6*10 + 5 * (2 - 3));

let divByZero = 100.0 / 0.0;
let zeroOverZero = 0.0 / 0.0;

console.log("100.0 / 0.0 = " + divByZero);
console.log("0.0 / 0.0 = " + zeroOverZero);

// Equality returns booleans
console.log("5 === 5: ", 5 === 5);
console.log("5 === 6: ", 5 === 6);
console.log("5 === '5': ", 5 === '5');

// Don't use == for equality...
console.log('\\t\\r\\n ' == 0);

// === checks strick equality
// == performs type conversion 

// Can check for NaN with isNaN()
console.log("isNaN(zeroOverZero):",
              isNaN(zeroOverZero));


"""

slide.code "JavaScript Control Flow", null, """
let a = [0, 1, 2, 3, 4];
let singer = {
    first_name: "Kanye",
    last_name: "West"
}


// If (ALWAYS USE {} BRACES)
if (a[3] === 3) {
  console.log("if: success");
}
else {
  console.log("if: failure");
}

// For (enumeration)
for (let i = 0; i < a.length; i++) {
  console.log(`a[${i}] = ${a[i]}`);
}

// For (attr in obj)
for (let prop in singer) {
  // console.log("singer[" + prop + "] = ",singer[prop])
  // Example of using string literal
  console.log(`singer[${prop}] = ${singer[prop]}`)
}

// While 
while (a[4] > 2) {
  a[4]--;
  console.log("a[4] = " + a[4]);
}

// Also notice the increment and 
// decrement operators ++, --

"""

slide.code "JavaScript Functions", null, """
// Functions are JavaScript objects

// Create a variable called add and store
// a function in it that adds two numbers.
let add = function (a, b) { 
  return a + b;
};

// Can also specify the name directly

// Another (more succint) way: Arrow functions
// let add = (a, b) => a + b;
// For an exhaustive list of difference between
// regular 'function' and arrow '=>' functions
// Refer https://medium.com/better-programming/difference-between-regular-functions-and-arrow-functions-f65639aba256

console.log("add(2,3) = ", add(2,3));

// Since functions are objects, they can be stored
// as 'methods' within other objects

// As Methods, they always recieve the 'this'
// argument when invoked, which is bound 
// to the object they are a method of
let myObject = {
   value: 0,
   increment: function (inc) {
       this.value += inc;
    } 
};

// Experiment - Replace the above regular function
// with arrow function and see what happens
// How does the binding of 'this' differ in an arrow function?

// We will use arrow function throughtout this tutorial
// as it is more succint

console.log("myObject.value: ", myObject.value);
myObject.increment(2);
console.log("myObject.value: ", myObject.value);
"""

slide.code "JavaScript Promise", null, """
// Promise is a proxy for a value not known when
// the promise is created
// For example - Asynchronous REST call
// Async handlers can be associated with it
// Lets async methods return values like synchronous methods
// Promise.then to handle response
// Promise.catch to handle errors
// Example - API call
fetch("./data/api.json)
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.log(error))

// NOTE - d3.csv returns a Promise
// which must be handled in a way similar to above
"""

slide.title "Theres even more important parts of JavaScript that could help you, like Closures and Inheritance, but for now this is enough. Check out 'JavaScript: The Good Parts' for more."

slide.title "Now some D3..."

slide.code "Selections: d3.select()", null, """
  // d3.select("selector") scans the html document
  // and returns the first instance of 'selector'
  // it finds, where 'selector' is a CSS selector

  // Since these slides have a 
  // <div class="out output"></div>   ----->>>>
  // we select that to work with

  let output_div = d3.select('div.out.output');

  // We can then set CSS style of the selected
  // element with .style('name', value)

  output_div.style('background-color', 'blue');

  // We can modify all other non-style attributes
  // like 'class' and 'id' with .attr()

  output_div.attr('id', 'main_output');

"""


slide.code "Adding DOM elements with D3", null, """
 // First we select the output div 
 let output_div = d3.select('div.output');

 // Use .append() to add a DOM element to 
 // the end of the selected div
 let svg = output_div.append('svg');

 // Use .attr() to set element attributes
 svg.attr("width", 400);
 svg.attr("height", 300);

 // Elements can be added within other elements
 // Add a circle to the svg canvas
 let circle = svg.append("circle");
 circle.attr("cx", 40);
 circle.attr("cy", 60);
 circle.attr("r", 30);

"""


slide.code "Chaining D3 methods", null, """
  // D3 .append(), .attr(), and .style() 
  // all return the element or elements
  // they operated on, so they can be chained
  // as follows:

 let svg = d3.select('div.output')
    .append('svg')
    .attr("width", 400)
    .attr("height", 300);

  // Add a circle
  svg.append("circle")
    .attr("class", "myCircles")
    .attr("id", "circle_top")
    .attr("cx", 40)
    .attr("cy", 60)
    .attr("r", 30);

  // Add second circle
  svg.append("circle")
    .attr("class", "myCircles")
    .attr("id", "circle_bottom")
    .attr("cx", 40)
    .attr("cy", 120)
    .attr("r", 20);

  // Add a rectangle
  svg.append("rect")
    .attr("x", 100)
    .attr("y", 60)
    .attr("width", 30)
    .attr("height", 50)
    .style("fill", "orange");

  // Add a line
  svg.append("line")
    .attr("x2", 250)
    .attr("y2", 90)
    .attr("x1", 150)
    .attr("y1", 60)
    .attr("stroke", "black")
    .attr("stroke-width", 2);
"""

slide.title "Check out the same example <a href=\"./../Example_Files/basic_d3.html\" >here</a><br/> Right Click and view the source code to understand  how to use d3 inside HTML "
slide.title "Once added, DOM elements can be selected and modified with D3"

slide.code "SVG Selections", shapes, """
 /* Given an output div like:
 <div class="out output">
  <svg height="300" width="400">
    <circle r="30" cy="60" cx="40" 
      id="circle_top" class="myCircles"></circle>
    <circle r="20" cy="120" cx="40"
      id="circle_bottom" class="myCircles"></circle>
    <rect style="fill: orange;" height="50"
       width="30" y="60" x="100"></rect>
    <line stroke-width="2" stroke="black" 
        y1="60" x1="150" y2="90" x2="250"></line>
  </svg>
</div>
 */

 // We can select DOM elements with selector
 // strings (Same as CSS: elem, .class, #id)
 let circle = d3.select("div.output svg")
               .select("#circle_top");

 // We can also sub-select from selections 
 let rect = d3.select("div.output")
              .select("rect");

 // We can then act on these selections
 circle.attr("fill", "red");
 rect.style("fill", "purple");
"""

slide.code "Multiple Selections: .selectAll()", shapes, """
 /* Given an output div like:
 <div class="out output">
  <svg height="300" width="400">
    <circle r="30" cy="60" cx="40" 
      id="circle_top" class="myCircles"></circle>
    <circle r="20" cy="120" cx="40"
      id="circle_bot" class="myCircles"></circle>
    <rect style="fill: orange;" height="50"
       width="30" y="60" x="100"></rect>
    <line stroke-width="2" stroke="black" 
        y1="60" x1="150" y2="90" x2="250"></line>
  </svg>
</div>
 */

 // We can also select ALL elements which match 
 let circle = d3.selectAll(".myCircles");

 // We can then act on all these selections
 // simultaneously
 circle.style("fill", "steelblue");
"""


slide.code "Acting on Selections Individually", shapes, """
/* Given an output div like:
 <div class="out output">
  <svg height="300" width="400">
    <circle r="30" cy="60" cx="40" 
      id="circle_top" class="myCircles"></circle>
    <circle r="20" cy="120" cx="40"
      id="circle_bot" class="myCircles"></circle>
    <rect style="fill: orange;" height="50"
       width="30" y="60" x="100"></rect>
    <line stroke-width="2" stroke="black" 
        y1="60" x1="150" y2="90" x2="250"></line>
  </svg>
</div>
*/

 // Typicall, when selecting SVG elements, we 
 // want to select from the SVG canvas to avoid
 // conflicts
 let svg = d3.select("div.output");

 // Select all circles
 let circle = svg.selectAll("circle");

 // Use an anonymous function which gets
 // evaluated for each element in the selection
 // to set the x coordinate
 circle.attr("cx", () => Math.random() * 400);
"""

slide.title "The magic of D3 allows us to then set these element properties based on data"

slide.code "Binding Data: .data()", circles3, """
/* Given an output div like:
<div class="out output">
  <svg height="300" width="400">
    <circle r="10" cy="60" cx="40"></circle>
    <circle r="10" cy="60" cx="140"></circle>
    <circle r="10" cy="60" cx="240"></circle>
  </svg>
</div>
*/

// Select the SVG canvas
let svg = d3.select("div.output svg");

// Select all three circles
let circle = svg.selectAll("circle");

// Define our data
let dataset = [25, 400, 900];

// Bind the circles to data of our choice
// based on index
circle.data(dataset);

// After the data is bound, it lives
// in the .__data__ property of the 
// DOM element (CHECK INSPECTOR)

// How to check for __data__?
// Run the block of code
// Right click on any circle, select inspect
// Below the inspector, select "properties" tab
// Expand circle and look for '__data__' property

// This data is then available as the 
// first argument to .attr() and .style()
// functions (by convention we use d)
circle.attr("r", (d) => Math.sqrt(d));

// Bonus Tip: Even shorter syntax
// circle.attr("r", Math.sqrt);
"""

slide.code "Binding Data: .data()", circles3, """
/* Given an output div like:
<div class="out output">
  <svg height="300" width="400">
    <circle r="10" cy="60" cx="40"></circle>
    <circle r="10" cy="60" cx="140"></circle>
    <circle r="10" cy="60" cx="240"></circle>
  </svg>
</div>
*/

 // Select the SVG canvas
 let svg = d3.select("div.output svg");

 // Select all three circles
 let circle = svg.selectAll("circle");

 // Define the data
 let dataset = [25, 400, 900];

 // Bind the circles to data of our choice
 // based on index
 circle.data(dataset);

 // After the data is bound, it lives
 // in the .__data__ property of the 
 // DOM (parent) element (CHECK INSPECTOR)

 // This data is then available as the 
 // first argument to .attr() and .style()
 // functions (by convention we use d)
 circle.attr("r", (d) => Math.sqrt(d));

 // The second argument is the index of the 
 // element (by convention we use i)
 circle.attr("cy", (d, i) => i * 100 + 150);
"""

slide.title "We can even create new elements for new data"

slide.code "Entering Elements: .enter()", circles3, """
/* Given an output div like:
<div class="out output">
  <svg height="300" width="400">
    <circle r="10" cy="60" cx="40"></circle>
    <circle r="10" cy="60" cx="140"></circle>
    <circle r="10" cy="60" cx="240"></circle>
  </svg>
</div>
*/

 // What if we try to bind 4 data points
 // instead of 3 like last time?
 let dataset = [25, 400, 900, 1600];

 // Select the SVG canvas
 let svg = d3.select("div.output svg");

 // Select all three circles & bind to
 // our four data points
 let circle = svg.selectAll("circle")
              .data(dataset);

 // Change radius of existing circles based on data
 circle.attr("r", (d) => Math.sqrt(d));

 // Then use .enter() to create & select
 // placeholder elements for which we have data 
 // but no existing element (datapoint 1600)
 let circleEnter = circle.enter();

 // Add a circle for each new data point
 let newCircles = circleEnter.append("circle");

 // Now set the properties of the new circle
 newCircles.attr("r", (d) => Math.sqrt(d))
      .attr("cx",  (d, i) => i * 100 + 40)
      .attr("cy", 60)
      .style("fill", "red");
"""


slide.code "ENTER EVERYTHING", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

// We can now create elements for all new data

// Select the SVG canvas
let svg = d3.select("div.output svg");

let dataset = [25, 400, 900, 1600];

// Select circles & bind to
// our four data points
let circle = svg.selectAll("circle")
            .data(dataset);

// Entering now returns all data
let circleEnter = circle.enter();

// Add a circle for each new data point
let newCircles = circleEnter.append("circle");

// Now set the properties of the new circles
newCircles.attr("r", (d) => Math.sqrt(d))
    .attr("cx",  (d, i) => i * 100 + 40)
    .attr("cy", 60);
"""


slide.code "ENTER EVERYTHING: The pattern", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

// Select the SVG canvas
let svg = d3.select("div.output svg");

// Define the data
let dataset = [25, 400, 900, 1600];

// Bind - Enter - Update
svg.selectAll("circle")
    .data(dataset)
    .enter()
    .append("circle")
    .attr("r", (d) => Math.sqrt(d))
    .attr("cx", (d, i) => i * 100 + 40)
    .attr("cy", 60);
"""

slide.title "And remove elements for missing data"

slide.code "Exiting Elements: .exit()", circles3, """
/* Given an output div like:
<div class="out output">
  <svg height="300" width="400">
    <circle r="10" cy="60" cx="40"></circle>
    <circle r="10" cy="60" cx="140"></circle>
    <circle r="10" cy="60" cx="240"></circle>
  </svg>
</div>
*/

// What if we instead give the visualization
// only 2 data points?
let dataset = [25, 400];

// Select the SVG canvas
let svg = d3.select("div.output svg");

// Select all three circles & bind to
// our two data points
let circle = svg.selectAll("circle")
            .data(dataset);

// Change radius of existing circles based on data
circle.attr("r", (d) => Math.sqrt(d))

// Here .exit() returns the elements for which
// no corresponding data point was bound.
circle.exit().remove();

// If the data doesnt exist, remove the circle!
"""


slide.title "To assist visualization, D3 provides scales to convert from a specified domain to a specified range"

slide.code "Scales", null, """
// Given a canvas width and height
let w = 420, h = 320;

// We use d3.scaleLinear() to 
// return a function which converts
// from our data domain to the 
// canvas pixel domain

// x is a function!
let x = d3.scaleLinear()
  // Domain is input
  .domain([-1, 1])
  // Range is output
  .range([0, w])

// y is also a function!
let y = d3.scaleLinear()
  .domain([0, 1000])
  .range([0, h])

console.log("x(-1) ==", x(-1)) // == 0
console.log("x(0) ==", x(0)) // == w/2
console.log("x(1) ==", x(1)) // == w

console.log("y(900) ==", y(900)) // == h*9/10

"""

slide.code "A basic scaled barchart", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

let svg = d3.select("div.output svg");

let data = [4, 8, 15, 16, 23, 42];

let width = 500,
    height = 666;

// Define the bar thickness to be an even
// division of the svg height
let barHeight = height / data.length;

// Create an xScale which maps from data
// values to x coordinates
let xScale = d3.scaleLinear()
    .domain([0, d3.max(data)])
    .range([0, width]);

// For each data point, create a group
// which translates all elements to the 
// correct y coordinate
let bar = svg.selectAll("g")
    .data(data)
    .enter()
    .append("g")
    .attr("transform", (d, i) => `translate(0, ${i * barHeight})`);

// bar now holds all newly created groups

// Add an SVG rect of width = xScale(datum)
bar.append("rect")
    .attr("width", (d) => xScale(d))
    .attr("height", barHeight - 1)
    .style("fill", "steelblue")
    .style("stroke", "white");

// Add SVG text the end of the bar displaying
// the value of the data
bar.append("text")
    .attr("x", (d) => xScale(d) - 5)
    .attr("y", barHeight / 2)
    .attr("dy", ".35em")
    .text(d => d)
    .style("fill", "white")
    .style("text-anchor", "end");
"""

slide.code "Flipping the barchart", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

let svg = d3.select("div.output svg");

let data = [4, 8, 15, 16, 23, 42];

let width = 500,
    height = 666,
    barWidth = width / data.length - 10;

let y_scale = d3.scaleLinear()
    .domain([0, d3.max(data)])
    .range([0, height]);

let x_scale = d3.scaleLinear()
    .domain([0, data.length])
    .range([0, width]);

// Create a bar for each data point
let bar = svg.selectAll("rect")
    .data(data)
  .enter().append("rect")
    .attr("x", (d, i) => x_scale(i))
    .attr("y", (d) => height - y_scale(d))
    .attr("width", barWidth)
    .attr("height", (d) => y_scale(d))
    .style("fill", "steelblue")
    .style("stroke", "white");

// Create a text label for each data point
svg.selectAll("text")
    .data(data)
    .enter().append("text")
    .attr("x", (d, i) => x_scale(i) + barWidth / 2)
    .attr("y", (d) => height - y_scale(d) + 20)
    .text(d => d)
    .style("fill", "white")
    .style("text-anchor", "middle");
"""

slide.code "Basic Scatterplot", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

// Select the svg canvas
let svg = d3.select("div.output svg");

let data = 
  [[5, 20], [480, 90], [250, 50], [100, 33], [330, 95],
   [410, 12], [475, 44], [25, 67], [85, 21], [220, 88]];

let width = 500,
    height = 666;

// Compute the maximum values for the scales
let x_max = d3.max(data, d => d[0]);

let y_max = d3.max(data, d => d[1]);

// Define two linear scales for the 
// x & y values
let x_scale = d3.scaleLinear()
    .domain([0, x_max])
    .range([0, width]);

let y_scale = d3.scaleLinear()
    .domain([0, y_max])
    .range([0, height]);

// Bind - enter - update circles with
// coordinates given by the scaled data
svg.selectAll("circle") 
   .data(data)
   .enter()
   .append("circle")
   .attr("cx", (d) => x_scale(d[0]))
   .attr("cy", (d) => y_scale(d[1]))
   .attr("r", 5);
"""

slide.code "Basic Histogram", empty_svg ,"""
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/
//generate random data
let data = d3.range(1000).map(d3.randomBates(10));

let formatCount = d3.format(",.0f");

//Initialize width, height. Select SVG and add svg group "g"
let svg = d3.select("div.output svg"),
    margin = {top: 20, right: 30, bottom: 30, left: 30},
    width = 500 - margin.left - margin.right,
    height = +svg.attr("height") - margin.top - margin.bottom,
    g = svg.append("g").attr("transform", `translate(${margin.left}, ${margin.top})`);

//Define XScales
let x = d3.scaleLinear()
    .rangeRound([0, width]);

//Define Histogram bins
let bins = d3.histogram()
    .domain(x.domain())
    (data);

//Define YScales using bins
let y = d3.scaleLinear()
    .domain([0, d3.max(bins, d => d.length)])
    .range([height, 0]);

//Generate Histogram
let bar = g.selectAll(".bar")
  .data(bins)
  .enter().append("g")
    .attr("class", "bar")
    .attr("transform", (d) => `translate(${x(d.x0)}, ${y(d.length)})`);

bar.append("rect")
    .attr("x", 1)
    .attr("width", x(bins[0].x1) - x(bins[0].x0) - 1)
    .attr("height", (d) => height - y(d.length))
    .style("fill","lightblue");

bar.append("text")
    .attr("dy", "-.75em")
    .attr("y", 6)
    .attr("x", (x(bins[0].x1) - x(bins[0].x0)) / 2)
    .attr("text-anchor", "middle")
    .text((d) => formatCount(d.length));

g.append("g")
    .attr("class", "axis axis--x")
    .attr("transform", `translate(0,${height})`)
    .call(d3.axisBottom(x));
"""


slide.title "D3 also makes animations between properties easy"

slide.code "Basic Transition", circles3, """
/* Given an output div like:
<div class="out output">
  <svg height="300" width="400">
    <circle r="10" cy="60" cx="40"></circle>
    <circle r="10" cy="60" cx="140"></circle>
    <circle r="10" cy="60" cx="240"></circle>
  </svg>
</div>
*/

 // Select the SVG canvas
 let svg = d3.select("div.output svg");

// Select our circles and bind new data
let circle = svg.selectAll("circle")
            .data([25, 400, 900]);

// Apply transition of duration 2 seconds
// and update properties of all circles 
// based on new data
circle.transition()
      .duration(2000)
      .attr("r", (d) => Math.sqrt(d))
      .attr("cx", (d, i) => i * 100 + 40)
      .attr("cy", (d, i) => i * 100 + 150);
"""

slide.code "Transitions For New Elements", circles3, """
/* Given an output div like:
<div class="out output">
  <svg height="300" width="400">
    <circle r="10" cy="60" cx="40"></circle>
    <circle r="10" cy="60" cx="140"></circle>
    <circle r="10" cy="60" cx="240"></circle>
  </svg>
</div>
*/

// Select the SVG canvas
 let svg = d3.select("div.output svg");

// Select our circles and bind new data
let circle = svg.selectAll("circle")
            .data([25, 400, 900, 1600]);

// Define initial properties for new circle
// Apply transition of duration 2 seconds
// and update properties of all circles 
// based on data
circle.enter()
  .append("circle")
  .attr("r", 0)
  .attr("cx", 400)
  .attr("cy", 300)
  .style("fill", "red")
      .merge(circle) 

      // allows transition to be applied on the newly entered circle 
          .transition()
          .duration(2000)
          .attr("r", (d) => Math.sqrt(d))
          .attr("cy", (d, i) => i * 100 + 150);
"""

slide.code "Transitioning in the barchart", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

let svg = d3.select("div.output svg");

let data = [4, 8, 15, 16, 23, 42];

let width = 500,
    height = 666,
    barWidth = width / data.length - 10;

let y_scale = d3.scaleLinear()
    .domain([0, d3.max(data)])
    .range([0, height]);

let x_scale = d3.scaleLinear()
    .domain([0, data.length])
    .range([0, width]);

// Create a bar for each data point
let bar = svg.selectAll("rect")
    .data(data)
  .enter().append("rect")
    .attr("x", (d, i) => x_scale(i))
    .attr("y", (d) => height)
    .attr("width", barWidth)
    .attr("height", (d) => y_scale(d))
    .style("fill", "steelblue")
    .style("stroke", "white");

// Transition to the correct y location
bar.transition().duration(2000)
    .attr("y", (d) => height - y_scale(d));

// Create a text label for each data point
let text = svg.selectAll("text")
    .data(data)
    .enter().append("text")
    .attr("x", (d, i) => x_scale(i) + barWidth / 2)
    .attr("y", height)
    .text((d) => d)
    .style("fill", "white")
    .style("text-anchor", "middle");

// Transition text to correct height
text.transition().duration(2000)
    .attr("y", (d) => height - y_scale(d) + 20);
"""



# -----------------------------------------------
slide.title "Binding data by key"

slide.code_title title = ".data(..., join)"

init_svg = ->
  svg = d3.select("div.output").append("svg")

  svg.selectAll("rect")
    .data([127, 61, 256])
    .enter().append("rect")
      .attr("x", 0)
      .attr("y", (d,i) -> i*90+50)
      .attr("width", (d,i) -> d)
      .attr("height", 20)
      .style("fill", "steelblue")

slide.code title, init_svg, """
let svg = d3.select("div.output svg")

// Let's say we start here:
/*
svg.selectAll("rect")
  .data([127, 61, 256])
  .enter().append("rect")
    .attr("x", 0)
    .attr("y", (d,i) => i*90+50)
    .attr("width", (d,i) => d)
    .attr("height", 20)
    .style("fill", "steelblue")
*/

// And then we bind new data by index
let selection = svg.selectAll("rect")
  .data([61, 256, 71]) 

// Create rectangles for new data (NONE)
selection.enter().append("rect")
  .attr("x", 0)
  .attr("y", (d,i) => i*90+50 )
  .attr("width", (d,i) => d)
  .attr("height", 20)
  .style("fill", "steelblue")
// Transition old rectangles to new y and 
// width based on the new data
    .merge(selection)
      .transition()
      .duration(3000)
        .attr("x", 0)
        .attr("y", (d,i) => i*90+50 )
        .attr("width", (d,i) => d)
        .attr("height", 20)
        .style("fill", "steelblue")

// Remove rectangles for which we have no bound
// data (NONE since we bound by index)
selection.exit()
  .remove()
"""



# -----------------------------------------------
slide.title "Loading External Data"

slide.code "d3.csv()", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="666" width="500"></svg>
</div>
*/

/* And a datafile data.csv:
      name,value
      Locke,4
      Reyes,8
      Ford,15
      Jarrah,16
      Shephard,23
      Kwon,42
*/

let width = 450,
    height = 666;

let x = d3.scaleLinear()
    .range([0, width]);

let chart = d3.select("div.output svg");

// d3.csv takes 3 arguments:
// filename, accessor, callback

// The accessor is a function which takes 
// each row of the data and returns a converted
// version:
function type(d) {
  d.value = +d.value; // coerce to number
  return d;
}

// This converted version is passed to the
// third argument, the callback function
// All processing happens inside this function

d3.csv("data/data.csv")
  .then((data) => {
    let barHeight = height / data.length;

  x.domain([0, d3.max(data, (d) => +d.value)]);

  chart.attr("height", barHeight * data.length);

  let bar = chart.selectAll("g")
      .data(data)
    .enter().append("g")
      .attr("transform", (d, i) => `translate(0, ${i * barHeight})`);

  bar.append("rect")
      .attr("width", (d) => x(d.value))
      .attr("height", barHeight - 1);

  bar.append("text")
      .attr("x", (d) => x(d.value) - 25)
      .attr("y", barHeight / 2)
      .attr("dy", ".35em")
      .text((d) => d.value);
  })
  .catch((error) => console.log(error));

"""

# -----------------------------------------------
slide.title "D3 Data Processing"

slide.code "d3.group()", null, """
// Given an yields of items
let yields = [
  {yield: 27.00, variety: "Manchuria", year: 1931, site: "University Farm"},
  {yield: 48.87, variety: "Manchuria", year: 1931, site: "Waseca"},
  {yield: 27.43, variety: "Manchuria", year: 1932, site: "Morris"},
  {yield: 27.43, variety: "Chowmein", year: 1932, site: "Morris"},
  {yield: 27.00, variety: "Manchuria", year: 1932, site: "University Farm"},
  {yield: 48.87, variety: "Dumpling", year: 1933, site: "Waseca"},
  {yield: 27.43, variety: "Manchuria", year: 1933, site: "Morris"},
  {yield: 27.43, variety: "Chowmein", year: 1935, site: "Morris"}
];

// Grouping allows elements in an array to 
// be grouped into a hierarchical tree structure; 
// Think of it like the GROUP BY operator in SQL
let entries = d3.group(yields, d => d.year)

// Convert MapIterator to Array
// Reference for object spread operator
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax
entries = [...entries]

//Print JSON in pretty format
console.log(JSON.stringify(
                 entries,undefined,2))
"""

slide.code "d3.rollup()", null, """
// Given data
let data = [
  {name: "jim",   amount: "34.0",   date: "11/12/2015"},
  {name: "carl",  amount: "120.11", date: "11/12/2015"},
  {name: "stacy", amount: "12.01",  date: "01/04/2016"},
  {name: "stacy", amount: "34.05",  date: "01/04/2016"}
]

// Groups and reduces the specified iterable of 
// values into a Map from key to value
let entries = d3.rollup(data, v => v.length, d => d.name)

// Convert from MapIterator to Array
entries = [...entries]

//Print JSON in pretty format
console.log(JSON.stringify(
                 entries,undefined,2))

// Refer https://github.com/d3/d3-array/blob/master/README.md#rollup
"""

slide.title "Check more on groups, rollup etc. at <a target=\"_blank\" href=\"https://github.com/d3/d3-array/blob/master/README.md#group\">here</a>"
# -----------------------------------------------
slide.title "Advanced Scales"

slide.code "Advanced Scales", empty_svg, """
let w = 450,
    h = 500;

let years = ["1992", "1996", "2000", "2004"];
let positions = [100, 200, 300, 400];

// Ordinal scales map discrete values by index
let xScale = d3.scaleOrdinal()
                .domain(years)
                .range(positions);

console.log("xScale('2000'): ", xScale("2000"));

// ScaleBands are like ordinal scales except 
// the output range is continuous and numeric.
// rangeRound() create the range by diving the given interval into 
// bands of even size (with rounded values)

xScale =  d3.scaleBand()
                .domain(years)
                .rangeRound([0, w])
                .padding(0.05)

console.log("xScale('2000'): ", xScale("2000"));

// There is also a .bandwidth() method which 
// returns the size of the band
console.log("xScale.bandwidth(): ", 
              xScale.bandwidth());
"""

# -----------------------------------------------
slide.title "Adding Axes"

slide.code "Adding Axes", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="600" width="500"></svg>
</div>
*/

// Select the SVG canvas
let svg = d3.select('div.output svg');

var width = 400, height = 500;


var xscale = d3.scaleLinear()
    .domain([0, 50])
    .range([0, width - 100]);

var yscale = d3.scaleLinear()
        .domain([0, 50])
        .range([height/2, 0]);

var x_axis = d3.axisBottom()
        .scale(xscale);

var y_axis = d3.axisLeft()
        .scale(yscale);

svg.append("g")
       .attr("transform", "translate(50, 250)")
       .call(y_axis);

svg.append("g")
        .attr("transform", "translate(50, " +height  +")")
        .call(x_axis)

"""

# -----------------------------------------------
slide.title "Interesting Examples"



slide.code "Force-Directed Graph", empty_svg, """
/* Given a div with an empty SVG canvas:
<div class="out output">
    <svg height="600" width="500"></svg>
</div>
*/

let svg = d3.select("div.output").select("svg"),
    width = +svg.attr("width"),
    height = +svg.attr("height");

let color = d3.scaleOrdinal(d3.schemeCategory10);

let simulation = d3.forceSimulation()
    .force("link", d3.forceLink().id((d) => d.id))
    .force("charge", d3.forceManyBody())
    .force("center", d3.forceCenter(width / 2, height / 2));

d3.json("data/miserables.json")
  .then((graph) => {
    console.log(graph);
    let link = svg.append("g")
    .attr("class", "links")
    .selectAll("line")
    .data(graph.links)
    .enter().append("line")
    .attr("stroke-width", (d) => Math.sqrt(d.value))
    .attr("stroke","#999");

  let node = svg.append("g")
    .attr("class", "nodes")
    .selectAll("circle")
    .data(graph.nodes)
    .enter()
    .append("circle")
      .attr("r", 5)
      .attr("fill", (d) => color(d.group))
      .call(d3.drag()
          .on("start", dragstarted)
          .on("drag", dragged)
          .on("end", dragended));

  node.append("title")
      .text((d) => d.id);

  simulation
      .nodes(graph.nodes)
      .on("tick", ticked);

  simulation.force("link")
      .links(graph.links);

  function ticked() {
    link
        .attr("x1", (d) => d.source.x)
        .attr("y1", (d) => d.source.y)
        .attr("x2", (d) => d.target.x)
        .attr("y2", (d) => d.target.y);

    node
        .attr("cx", (d) => d.x)
        .attr("cy", (d) => d.y);
  }
  })
  .catch(error => console.log(error));

function dragstarted(d) {
  if (!event.active) simulation.alphaTarget(0.3).restart();
  d.fx = d.x;
  d.fy = d.y;
}

function dragged(d) {
  d.fx = d3.event.x;
  d.fy = d3.event.y;
}

function dragended(d) {
  if (!d3.event.active) simulation.alphaTarget(0);
  d.fx = null;
  d.fy = null;
}
"""

slide.code "Expandible Dendrite Plot", null, """
let treeData =
  {
    "name": "Top Level",
    "children": [
      { 
        "name": "Level 2: A",
        "children": [
          { "name": "Son of A" },
          { "name": "Daughter of A" }
        ]
      },
      { "name": "Level 2: B" }
    ]
  };

// Set the dimensions and margins of the diagram
let margin = {top: 20, right: 90, bottom: 30, left: 90},
    width = 380 - margin.left - margin.right,
    height = 666 - margin.top - margin.bottom;

// append the svg object to the body of the page
// appends a 'group' element to 'svg'
// moves the 'group' element to the top left margin
let svg = d3.select("div.output").append("svg")
    .attr("width", width + margin.right + margin.left)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", `translate(${margin.left}, ${margin.top})`);

let i = 0,
    duration = 750,
    root;

// declares a tree layout and assigns the size
let treemap = d3.tree().size([height, width]);

// Assigns parent, children, height, depth
root = d3.hierarchy(treeData, (d) => d.children);
root.x0 = height / 2;
root.y0 = 0;

// Collapse after the second level
root.children.forEach(collapse);

update(root);

// Collapse the node and all it's children
function collapse(d) {
  if(d.children) {
    d._children = d.children
    d._children.forEach(collapse)
    d.children = null
  }
}

function update(source) {

  // Assigns the x and y position for the nodes
  let treeData = treemap(root);

  // Compute the new tree layout.
  let nodes = treeData.descendants(),
      links = treeData.descendants().slice(1);

  // Normalize for fixed-depth.
  nodes.forEach((d) => { d.y = d.depth * 180});

  // ****************** Nodes section ***************************

  // Update the nodes...
  let node = svg.selectAll('g.node')
      .data(nodes, (d) => d.id || (d.id = ++i));

  // Enter any new modes at the parent's previous position.
  let nodeEnter = node.enter().append('g')
      .attr('class', 'node')
      .attr("transform", (d) => `translate(${source.y0},  ${source.x0})`)
    .on('click', click);

  // Add Circle for the nodes
  nodeEnter.append('circle')
      .attr('class', 'node')
      .attr('r', 1e-6)
      .style("fill", (d) => d._children ? "lightsteelblue" : "#fff")
      .attr("stroke","#ccc");

  // Add labels for the nodes
  nodeEnter.append('text')
      .attr("dy", ".35em")
      .attr("x", (d) => d.children || d._children ? -13 : 13)
      .attr("text-anchor", (d) => d.children || d._children ? "end" : "start")
      .text((d) => d.data.name);

  // UPDATE
  let nodeUpdate = nodeEnter.merge(node);

  // Transition to the proper position for the node
  nodeUpdate.transition()
    .duration(duration)
    .attr("transform", (d) => `translate(${d.y}, ${d.x})`);

  // Update the node attributes and style
  nodeUpdate.select('circle.node')
    .attr('r', 10)
    .style("fill", (d) => d._children ? "lightsteelblue" : "#fff")
    .attr('cursor', 'pointer');


  // Remove any exiting nodes
  let nodeExit = node.exit().transition()
      .duration(duration)
      .attr("transform", (d) => `translate(${source.y}, ${source.x})`)
      .remove();

  // On exit reduce the node circles size to 0
  nodeExit.select('circle')
    .attr('r', 1e-6);

  // On exit reduce the opacity of text labels
  nodeExit.select('text')
    .style('fill-opacity', 1e-6);

  // ****************** links section ***************************

  // Update the links...
  let link = svg.selectAll('path.link')
      .data(links, (d) => d.id);

  // Enter any new links at the parent's previous position.
  let linkEnter = link.enter().insert('path', "g")
      .attr("class", "link")
      .attr('d', (d) => {
        let o = {x: source.x0, y: source.y0}
        return diagonal(o, o)
      }).attr("stroke","#ccc") 
        .attr("stroke-width","2px")
        .attr("fill","None")


  // UPDATE
  let linkUpdate = linkEnter.merge(link);

  // Transition back to the parent element position
  linkUpdate.transition()
      .duration(duration)
      .attr('d', (d) => diagonal(d, d.parent));

  // Remove any exiting links
  let linkExit = link.exit().transition()
      .duration(duration)
      .attr('d', (d) => {
        let o = {x: source.x, y: source.y}
        return diagonal(o, o);
      })
      .remove();

  // Store the old positions for transition.
  nodes.forEach((d) => {
    d.x0 = d.x;
    d.y0 = d.y;
  });

  // Creates a curved (diagonal) path from parent to the child nodes
  function diagonal(s, d) {

    let path = `M ${s.y} ${s.x}
            C ${(s.y + d.y) / 2} ${s.x},
              ${(s.y + d.y) / 2} ${d.x},
              ${d.y} ${d.x}`

    return path
  }

  // Toggle children on click.
  function click(d) {
    if (d.children) {
        d._children = d.children;
        d.children = null;
      } else {
        d.children = d._children;
        d._children = null;
      }
    update(d);
  }
}
"""

