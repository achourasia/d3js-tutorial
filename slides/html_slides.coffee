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

slide.title "HyperText Markup Language (HTML) is the standard markup language for creating web pages and web applications. "

slide.title "A basic understanding of HTML is essential to build web based visualizations"





slide.code "HTML Elements", null, """
 <!--comments can be written like this
    The whole paragraph is commented out -->
  <!--
    An HTML element usually consists of a start tag 
    and end tag, with the content inserted in between:

    <tagname>Content goes here...</tagname>

    Few essential tags are
    <html> … </html>
    <head> … </head>
    <body> … </body>

    Few common tags are
    <div> … </div>
    <img> … </img>
    <p> … </p>
    <script> … </script>
    <table> … </table>
    <ul> … </ul>

    Below are some examples on  their usage
  -->

  

"""

slide.code "HTML Elements - Examples", null, """

<h1>This is a Heading</h1>

  <h2>This is another Heading</h2>

  <!-- There are other types of headings such as h3, h4, h5 and h6 -->

  <p>This is a  paragraph.</p>

  <a href="http://www.google.com" 
  target="_blank">This is a link</a>

  <img src="data/logo_UCSD.png"/>

  <!-- Check out div and span. 
  These are called Block Elements -->"""

slide.code "HTML Document", null, """
 

  <!-- A simple HTML Document looks like this -->

  <!DOCTYPE html>
  <html>
    <head>
      <title>Page Title</title>
    </head>
    <body>

      <h1>My First Heading</h1>
      <p>My first paragraph.</p>

    </body>
  </html>
"""
slide.code "HTML Attributes", null, """

<!-- Attributes provide additional 
  information about HTML elements.-->

  <img src="data/logo_UCSD.png" 
    width="250" height="142">

  <p title="I'm a tooltip">
  This is a paragraph.
  </p>
"""

slide.code "Styling", null, """  
  <!-- HTML allows inline styling 
    of elements using "style"
    attribute. -->
<!-- Use INSPECTOR to know values for each attribute -->

  <h1 style="color:blue;
      font-family:verdana;">
      This is a heading
  </h1>
  <p style="color:red;
      font-size:160%;   
      text-align:center;
      background-color:yellow">
    This is a paragraph.
  </p>

  <!-- For text formatting,
    We can use special elements
  -->

  <strong>This text is strong</strong>

  <b>This text is bold</b>

  <i>This text is italic</i>

  <h2>HTML <small>Small</small> Formatting</h2>

  <h2>HTML <mark>Marked</mark> Formatting</h2>
"""


slide.code "Tables", null, """
<!-- Table is an important and very useful
element. It can be used to effectively display information
as well as to create a layout of the HTML page -->

<table style="width:100%;" border=1px">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>Age</th>
  </tr>
  <tr>
    <td>Firstname 1</td>
    <td>Lastname 1</td> 
    <td>24</td>
  </tr>
  <tr>
    <td>Firstname 2</td>
    <td>Lastname 2</td> 
    <td>94</td>
  </tr>
</table>
"""


slide.code "Lists", null, """

<!-- List is a collection of related items.
     It is another effective way to display information -->

<!-- UNORDERED LISTS -->
<ul style="list-style-type:disc">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

<!-- ORDERED LISTS -->
<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<!-- NESTED LISTS -->
<ul>
  <li>Coffee</li>
  <li>Tea
    <ul>
    <li>Black tea</li>
    <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ul>
"""


slide.code "Blocks", null, """
<!-- <div> element is often used as
 a container for other HTML elements -->

<div style="background-color:black;color:white;padding:20px;">
  <h2>Outer Div</h2>
  <p>This is the outer div element</p>
  <div style="background-color:yellow;color:Black;">
    <h2> Inner Div </h2>
    <p> This is the inner div </p>
  </div>

</div>


"""

slide.title "Let's look a bit Javascript. JavaScript is used with HTML to make dynamic changes to the webpage "



slide.code "The script Tag", null, """
<!-- The <script> tag is used to define a 
    client-side script (JavaScript) -->

<!-- Lets extend our basic HTML example
      to include <script>-->
 <!DOCTYPE html>
  <html>
    <head>
      <title>Page Title</title>
    </head>
    <body>

      <h1>My First Heading</h1>
      <p>My first paragraph.</p>
     <script>
      // This is a javascript comment.
      </script>
    </body>
  </html>



"""

slide.code "id and class attributes", null, """
<!-- id is used to select one
 representative element -->

<p id="demo">E0</p>
<script>
document.getElementById("demo").innerHTML 
= "Hello JavaScript!";
</script> 

<!-- class is used to select a collection
of elements -->
<p class="demo_class">E1</p>
<p class="demo_class">E2</p>
<p class="demo_class">E3</p>
<p class="demo_class2">E4</p>
<script>
var elements = document.getElementsByClassName
              ("demo_class");
for(var i=0; i<elements.length; i++)
  elements[i].style.color = "red";;
</script> 


<!-- Check out 
  document.getElementsByName
  document.getElementsByTagName
-->

"""

slide.code "JavaScript Selectors", null, """

<div>

  <h2> div  </h2>
  <div id="demo"> 
    <h2> div 2 </h2>
    <div>
      <h2> div 3 </h2>
    </div>
  </div>
</div>

<script>
  var el = document.getElementById("demo");

  el.parentNode.style.backgroundColor   = "red";
  el.getElementsByTagName("div")[0].style
  .backgroundColor = "yellow"
  el.children[0].style.color = "indigo"
</script>


"""

slide.code "JavaScript Events", null, """

<div id="demo">

  <h2> div  </h2>
  <div > 
    <h2> div 2 </h2>
    <div>
      <h2> div 3 </h2>
    </div>
  </div>
</div>

<script>
  document.getElementById("demo")
    .addEventListener("mouseover", 
      function(){
        this.style.backgroundColor = "red"
      });
  document.getElementById("demo")
    .addEventListener("click", 
      function(){
        this.style.backgroundColor = "yellow"
      });
  document.getElementById("demo") 
    .addEventListener("mouseout", 
      function(){
        this.style.backgroundColor = "cyan"
      });
</script>


"""

slide.code "Simple Calculator", null , """
<div id="calculator">
   <h1 id="screen">0</h1>
   <div id="numpad">
     <ul>
       <li><button class="key" onclick="add(1)">1</button></li>
       <li><button class="key" onclick="add(2)">2</button></li>
       <li><button class="key" onclick="add(3)">3</button></li>
       <li><button class="key" onclick="add(4)">4</button></li>            
   </div>
</div>
<script>
var sum = 0;
function add(x){
  document.getElementById("screen").innerText = (sum+x)
  sum += x;
}
</script>
"""



slide.title "A separate tutorial covers the Javascript language in depth <a href=\"D3_tutorial/slides/index.html#3\">here</a>"

slide.title "Lets dive into styling using CSS"

slide.code "CSS Basics", null, """
<!-- 
  We  generally declare the style element
  inside the <head> 
-->

<!DOCTYPE html>
<html>
<head>
  <style>
  body {
      background-color: lightblue;
  }

  h1 {
      color: white;
      text-align: center;
  }

  p {
      font-family: verdana;
      font-size: 20px;
  }
  </style>
</head>
<body>

<h1>Heading</h1>
<p>This is a paragraph.</p>

</body>
</html>


"""


slide.code "IDs and classes", null, """

<!-- The concept if id and class remains the same -->
<style>
#para1 {
    text-align: center;
    color: red;
}
.center {
    text-align: center;
    color: red;
}
</style>

<p id="para1">Hello World!</p>

<p>This paragraph is not 
    affected by the style.</p>
<h1 class="center">Red and 
    center-aligned heading</h1>
<p class="center">Red and 
    center-aligned paragraph.</p>
"""


slide.code "Styling Properties", null, """
<style>
  h2 { background-color:#FF0000;
       color: yellow }

  div.div1{

    border: 1px solid black;
    margin-top: 100px;
    margin-bottom: 100px;
    margin-right: 150px;
    margin-left: 80px;
  }

  div.div2{
    border: 1px solid black;
    background-color: rgb(255, 255, 0);
    padding: 50px 30px 50px 80px;
  }

  div.div3 {
    height: 200px;
    width: 50%;
    background-color: powderblue;
  }
</style>

<!-- Colors -->
<h2>  
Background and Text Color
</h2>

<!-- margins -->
<div class="div1">div element </div>

<!-- padding -->
<div class="div2">Another Div</div>

<!-- Height & Width -->
<div class="div3"> Just Another Div </div>

"""


slide.code "More Properties", null, """
<!-- Borders -->
<style>
  p.one {
    border-style: solid;
    border-width: 5px;
}
p.two {
    border-style:  dashed solid;
    border-width: medium;
}
p.three {
    border-style: dotted;
    border-width: 2px;
}
p.four {
    border-style: ridge;
    border-width: thick;
}
p.five {
    border-style: inset;
    border-width: 15px;
}
p.six {
    border-style: outset;
    border-width: thick;
}
p.seven {
    border-style: solid;
    border-width: 2px 10px 4px 20px;
}
div {
    background-color: lightgrey;
    width: 300px;
    border: 15px solid green;
    padding: 25px;
    margin: 25px;
}
</style>
 
<p class="one">Some text.</p>
<p class="two">Some text.</p>
<p class="three">Some text.</p>
<p class="four">Some text.</p>
<p class="five">Some text.</p>
<p class="six">Some text.</p>
<p class="seven">Some text.</p>
<div> The CSS box model is essentially a 
box that wraps around every HTML element. 
It consists of: borders, padding, margins,
 and the actual content. </div>
"""

slide.code "Text Properties", null, """

<style>

p.uppercase { text-transform: uppercase; }
p.lowercase { text-transform: lowercase; }
p.capitalize { text-transform: capitalize; }

p.lowercase { text-indent: 50px; }
p.shadow { background-color:yellow;
           text-shadow: 3px 2px red;}

</style>
<!-- Case -->
<p class="uppercase">This is some text.</p>
<p class="lowercase">This is some text.</p>
<p class="capitalize">This is some text.</p>

<!-- Shadow -->
<p class="shadow"> This is some text </p>

"""


slide.code "Styling on events", null, """
<!-- We can apply different styles on each event -->

<style>
/* unvisited link */
button {
    background-color: yellow;
    color: black;
    padding: 14px 25px;
    text-align: center;
}
button:hover {
  background-color:lime;
}

button:active {
  background-color:cyan;
}

</style>

<button> click here </button>

"""

slide.code "Combinators", null, """
<!-- 
There are four different combinators in CSS3:
descendant selector (space)
child selector (>)
adjacent sibling selector (+)
general sibling selector (~)
-->
<style>
div > p {
    background-color: yellow;
}
div   p {
    color: blue;
}
div + p {
    background-color: cyan;
}
div ~ p {
    color: darkgreen;
}
</style>
<div>
  <p>Paragraph 1 in the div.</p>
  <p>Paragraph 2 in the div.</p>

  <span><p>Paragraph 3 in the div.</p></span> 
  <!-- not Child but Descendant -->
</div>
<p>Paragraph 4. Not in a div.</p>
<p>Paragraph 5. Not in a div.</p>
"""

slide.code "Tables", null, """
<style>
#table1, #table1 td, #table1 th {    
    border: 1px solid #ddd;
    text-align: left;
}

#table1 {
    border-collapse: collapse;
    width: 100%;
}

#table1  th, #table1 td {
    padding: 15px;
}

#table2 , #table2 th, #table2 td {

    border: 1px solid black;
}
</style>
<table id="table1">
  <tr>
    <th>Firstname</th> <th>Lastname</th> <th>Savings</th> </tr>
  <tr>
    <td>Peter</td> <td>Griffin</td> <td>$100</td> </tr>
</table>
<table id="table2">
  <tr>
    <th>Firstname</th> <th>Lastname</th> <th>Savings</th> 
  </tr> 
  <tr>
    <td>Peter</td> <td>Griffin</td> <td>$100</td> 
  </tr>
  
</table>
"""


slide.code "Images", null, """
<style>
img {
    opacity: 0.5;
}

img:hover {
    opacity: 1.0;
}

div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

</style>
<div>
<img src="data/logo_UCSD.png" 
    width="170" height="100">
</div>

<div class="img">
  <a target="_blank" href="data/img_forest.jpg">
    <img src="data/img_forest.jpg" width="300" height="200">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="img">
  <a target="_blank" href="data/img_forest.jpg">
    <img src="data/img_forest.jpg" width="600" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="img">
  <a target="_blank" href="data/img_lights.jpg">
    <img src="data/img_lights.jpg" width="600" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>
"""

slide.title "Some CSS3"

slide.code " More styling", null, """
<style>
#rcorners1 {
    border-radius: 25px;
    background: #73AD21;
    padding: 20px; 
    width: 200px;
    height: 150px;    
}
#bImage {
    background-image: url(data/img_forest.jpg);
    padding: 15px;
    color:white;
}
</style>

<!-- Rounder Corners -->
<p id="rcorners1">Rounded corners!</p>

<!-- Background Images -->
<div id="bImage">
  <h1>Heading</h1>
  <p>Some text</p>
</div>
"""


slide.code "A bit more", null, """
<style>
h1 {
    text-shadow: 2px 2px 5px red;
}
h2 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
div.polaroid {
  width: 250px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
}
</style>

<h1>Text-shadow effect!</h1>
<h2> Another Text-shadow effect!</h2>

<!-- Image shadow -->
<div class="polaroid">
  <img src="data/img_forest.jpg" style="width:100%">
  <div class="container">
    <p>Hardanger, Norway</p>
  </div>
</div>


"""

slide.code "Transformations", null, """
<style>
#skewed {
    -ms-transform: skewX(20deg); /* IE 9 */
    -webkit-transform: skewX(20deg); /* Safari */
    transform: skewX(20deg); /* Standard syntax */
}
#scaled {
    margin: 50px 0px 50px 100px;
    width: 200px;
    height: 40px;
    border: 1px solid black;
    -ms-transform: scale(2,3); /* IE 9 */
    -webkit-transform: scale(2,3); /* Safari */
    transform: scale(2,3); /* Standard syntax */
}
#rotated {
    margin-top:150px;
    -ms-transform: rotate(20deg); /* IE 9 */
    -webkit-transform: rotate(20deg); /* Safari */
    transform: rotate(20deg);
    border: 1px solid black;
}
#translated {
    width: 300px;
    height: 100px;
    border: 1px solid black;
    -ms-transform: translate(50px,100px); /* IE 9 */
    -webkit-transform: translate(50px,100px); /* Safari */
    transform: translate(50px,100px); /* Standard syntax */
}
</style>

<div id="skewed">
This div element is skewed 20 degrees along the X-axis.
</div>
<div id="scaled">
This div element is scaled 2 times.
</div>
<div id ="rotated">
This div is rotated
</div>
<div id="translated">
This div is translated
</div>
"""


slide.code "Transitions", null, """
<style> 
div {
    width: 100px;
    height: 100px;
    background: red;
    
}

div:hover {
    width: 300px;
    height: 300px;
    -webkit-transition: width 2s, height 4s; /* For Safari 3.1 to 6.0 */
    transition: width 2s, height 4s;
}
</style>

<p><b>Note:</b> This example does not work 
in Internet Explorer 9 and earlier versions.</p>

<div></div>

<p>Hover over the div element above, to see the transition effect.</p>

"""
slide.title "Most designers prefer frameworks to carry out styling. Check out <a href=\"http://getbootstrap.com/css/\"> Bootstrap CSS "
slide.title  "Back to HTML"



slide.code "Layouts", null, """

<style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
</style>

<div class="container">

<header>
   <h1>Header</h1>
</header>
  
<nav>
  Sidebar
</nav>

<article>
  <h1>Heading</h1>
  <p>Text</p>
</article>

<footer>Footer</footer>

</div>

"""
slide.code "Canvas", empty_svg, """
<canvas id="myCanvas" width="200" height="100" 
style="border:1px solid #d3d3d3;">
</canvas>

<script>
var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");
ctx.moveTo(0,0);
ctx.lineTo(200,100);
ctx.stroke();
</script>

<canvas id="myCanvas2" width="200" height="100" 
style="border:1px solid #d3d3d3;"></canvas>

<script>
var c = document.getElementById("myCanvas2");
var ctx = c.getContext("2d");
ctx.beginPath();
// x, y, r, startAngle, endAngle 
ctx.arc(95,50,40,0,2*Math.PI);
ctx.stroke();
</script> 

<canvas id="myCanvas3" width="200" height="100" 
style="border:1px solid #d3d3d3;"></canvas>

<script>
var c = document.getElementById("myCanvas3");
var ctx = c.getContext("2d");
// Create gradient
// xStart, yStart, xEnd, yEnd
var grd = ctx.createLinearGradient(0,0,200,0);
grd.addColorStop(0,"red");
grd.addColorStop(1,"white");
// Fill with gradient
ctx.fillStyle = grd;
ctx.fillRect(10,10,150,80);
</script>

"""

slide.code "SVG", null, """
<svg width="100" height="100">
  <circle cx="50" cy="50" r="40"
  stroke="green" stroke-width="4" fill="yellow" />
<br/>

<svg width="200" height="100">
  <rect  width="200" height="100"
  stroke="green" stroke-width="4" fill="yellow" />
<br/>

<svg width="400" height="180">
  <rect x="50" y="20" rx="20" ry="20" width="150" height="150"
  style="fill:red;stroke:black;stroke-width:5;opacity:0.5" />
</svg>
<br/>

<svg width="300" height="200">
  <polygon points="100,10 40,198 190,78 10,78 160,198"
  style="fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;" />
</svg>
"""
