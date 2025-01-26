Part 1: JavaScript Basics
1. Variables and Data Types
Here's how you can declare variables of different types, print them using console.log(), and display their types.

javascript
Copy
let name = "John Doe"; // String
let age = 25;          // Number
let isStudent = true;  // Boolean
let hobbies = ["reading", "coding", "traveling"]; // Array
let person = {         // Object
  firstName: "John",
  lastName: "Doe",
  age: 25
};

// Printing values and types
console.log("Name: " + name + " (Type: " + typeof name + ")");
console.log("Age: " + age + " (Type: " + typeof age + ")");
console.log("Is student: " + isStudent + " (Type: " + typeof isStudent + ")");
console.log("Hobbies: " + hobbies + " (Type: " + typeof hobbies + ")");
console.log("Person: " + JSON.stringify(person) + " (Type: " + typeof person + ")");
2. Operators (Simple Calculator)
We can prompt the user for input and perform basic arithmetic operations based on their choices:

javascript
Copy
// Simple calculator function
function calculate() {
  let num1 = parseFloat(prompt("Enter the first number:"));
  let num2 = parseFloat(prompt("Enter the second number:"));
  let operation = prompt("Choose an operation (+, -, *, /):");

  if (isNaN(num1) || isNaN(num2)) {
    alert("Invalid input! Please enter numbers.");
    return;
  }

  let result;

  switch (operation) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      if (num2 === 0) {
        alert("Cannot divide by zero.");
        return;
      }
      result = num1 / num2;
      break;
    default:
      alert("Invalid operation.");
      return;
  }

  alert("Result: " + result);
}

calculate(); // Call the function to run the calculator
3. Functions
Here's a function that takes a name as input and returns a greeting message.

javascript
Copy
function greetUser(name) {
  return "Hello, " + name + "! Welcome to JavaScript!";
}

let userName = prompt("Enter your name:");
let greetingMessage = greetUser(userName);
document.getElementById("greeting").innerHTML = greetingMessage;
In your HTML, you'd need an element with the id greeting to display this message:

html
Copy
<div id="greeting"></div>
Part 2: JavaScript Control Structures
1. If Statements
This code asks the user for their age and checks if they are eligible to vote:

javascript
Copy
let age = prompt("Please enter your age:");

if (age >= 18) {
  document.getElementById("vote-eligibility").innerHTML = "You are eligible to vote!";
} else {
  document.getElementById("vote-eligibility").innerHTML = "You are not eligible to vote yet.";
}
In your HTML:

html
Copy
<div id="vote-eligibility"></div>
2. Loops
To display numbers 1 to 10 on the webpage in an ordered list:

javascript
Copy
let list = "<ol>";
for (let i = 1; i <= 10; i++) {
  list += "<li>" + i + "</li>";
}
list += "</ol>";

document.getElementById("number-list").innerHTML = list;
And in your HTML:

html
Copy
<div id="number-list"></div>
Part 3: Introduction to the DOM
1. Creating HTML Structure
Here's a basic HTML structure:

html
Copy
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JavaScript Assignment</title>
</head>
<body>
  <h1>JavaScript Assignment</h1>
  <p>Learning JavaScript is fun!</p>
  <div id="dynamic-content"></div>
</body>
</html>
2. Selecting and Modifying HTML Elements
Now, we'll use JavaScript to modify the DOM elements dynamically:

javascript
Copy
// Change the <h1> text
document.querySelector("h1").innerText = "JavaScript in Action!";

// Add a new <p> inside the dynamic-content div
let newPara = document.createElement("p");
newPara.innerText = "This content was added dynamically using JavaScript.";
document.getElementById("dynamic-content").appendChild(newPara);
Putting Everything Together
Now you can combine everything into your HTML file. Ensure that the JavaScript is included either in a <script> tag within the HTML or in a separate .js file that is linked to your HTML file.

Here’s an example of how your final HTML might look:

html
Copy
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JavaScript Assignment</title>
</head>
<body>
  <h1>JavaScript Assignment</h1>
  <p>Learning JavaScript is fun!</p>

  <!-- Dynamic content will be added here -->
  <div id="dynamic-content"></div>

  <div id="greeting"></div>
  <div id="vote-eligibility"></div>
  <div id="number-list"></div>

  <script>
    // Include your JavaScript code here or in an external .js file
  </script>
</body>
</html>
