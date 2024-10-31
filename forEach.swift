/*"For Each" statements, also known as ForEach in SwiftUI, are a powerful 
tool for iterating over collections of data and generating views dynamically. 
They allow you to create a sequence of views based on an array of data, 
making it easy to display lists of items or repeat UI elements.

Here's an example of how you might use a ForEach statement in SwiftUI:*/

struct MyView: View {
    let items = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
        }
    }
}

/*In this example, we have an array of items ["Item 1", "Item 2", "Item 3"] 
and we use a ForEach statement to generate a Text view for each item in the array.

The ForEach statement takes two parameters: the collection of items to iterate over
(items) and a key path to a property that uniquely identifies each item (\.self).

The key path is used to ensure that each item in the collection is uniquely
identified, which is important for SwiftUI to efficiently update the views when
the data changes.

By using a ForEach statement, you can easily generate dynamic lists of views based
on your data, making it a powerful tool for building complex and interactive
user interfaces in SwiftUI.*/

/*In the code snippet I provided, \.self is a key path expression that refers to the identity 
of each element in the items array.
In Swift, when you use a ForEach statement, you need to provide a key path to 
identify each element in the collection. This is required to ensure that each 
view in the list has a unique identifier, which is important for maintaining 
the state of the list and updating it efficiently.
By using \.self, you're telling Swift to use the element itself as its own 
identifier. This is equivalent to saying "use the value of the element as its own key".
In other words, \.self is a shorthand way to say "use the identity of each 
element in the array as its own key path".
It's a common pattern when working with arrays of simple types like strings, 
integers, or enumerations, where each element can be used as its own unique identifier.*/

/*In SwiftUI, the ForEach statement is used to generate a sequence of views based on a 
collection of data.
It's commonly used to create dynamic lists of items, repeat UI elements, and generate 
views based on data from an array, set, or range.

The ForEach statement takes two parameters:
The collection of items to iterate over (e.g., an array, set, or range)
A key path to a property that uniquely identifies each item
The key path is used to ensure that each item in the collection is uniquely identified, 
which is important for SwiftUI to efficiently update the views when the data changes.

By using a ForEach statement, you can easily generate dynamic sequences of views based
on your data, making it a powerful tool for building flexible and interactive user
interfaces in SwiftUI.*/

/*In SwiftUI, the ForEach statement is used to generate a sequence of views based on a
collection of data.
It's commonly used to create dynamic lists of items, repeat UI elements, and generate
views based on data from an array, set, or range.

The ForEach statement takes two parameters:
The collection of items to iterate over (e.g., an array, set, or range)
A key path to a property that uniquely identifies each item
The key path is used to ensure that each item in the collection is uniquely identified,
which is important for SwiftUI to efficiently update the views when the data changes.

By using a ForEach statement, you can easily generate dynamic sequences of views based
on your data, making it a powerful tool for building flexible and interactive user
interfaces in SwiftUI.*/

/*In SwiftUI, the ForEach statement is used to generate a sequence of views based on a
collection of data.
It's commonly used to create dynamic lists of items, repeat UI elements, and generate
views based on data from an array, set, or range.

The ForEach statement takes two parameters:
The collection of items to iterate over (e.g., an array, set, or range)
A key path to a property that uniquely identifies each item
The key path is used to ensure that each item in the collection is uniquely identified,
which is important for SwiftUI to efficiently update the views when the data changes.

By using a ForEach statement, you can easily generate dynamic sequences of views based
on your data, making it a powerful tool for building flexible and interactive user
interfaces in SwiftUI.*/



/*Demonstrates creating a "For Each" loop to display multiple text elements 
within a V-Stack without manually typing out each text element.
Shows how to use the "index" variable within a "For Each" loop to display the 
loop number alongside the UI elements.*/

struct ContentView: View {
    let items = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        VStack {
            ForEach(items.indices, id: \.self) { index in
                Text("Item \(index + 1): \(items[index])")
            }
        }
    }
}

/*In this example, we have an array of items ["Item 1", "Item 2", "Item 3"] and we use a ForEach 
statement to generate a Text view for each item in the array.
The ForEach statement takes two parameters: the collection of items to iterate over (items.indices)
and a key path to a property that uniquely identifies each item (\.self).
By using items.indices as the collection, we can access the index of each item in the array and
use it to display the item number alongside the item itself.
This allows us to dynamically generate a sequence of Text views with the item number and item
name, without manually typing out each Text element.
By using the index variable within the ForEach loop, you can access the index of each item in the
collection and use it to customize the UI elements based on their position in the array.*/

/*In this example:
We define an array items containing 5 strings.
We use a ForEach loop to iterate over the indices of the items array (using items.indices).
Inside the loop, we use the index variable to access each element in the array (items[index]).
We also use the index variable to display the loop number alongside each 
text element (Loop number: \(index + 1)).
The resulting view is a vertical stack (VStack) containing 5 text elements, each displaying 
the loop number and the corresponding item from the array.
This implementation demonstrates how to use a "For Each" l
oop to efficiently display multiple UI elements, and how to utilize the index variable 
to access and display additional information. */

/*Customizing "For Each" Loops
Illustrates how to use "For Each" loops to display a series of circles and texts, 
iterating through a range of numbers with varying UI elements.
Meta AI
Here's an example of customizing "For Each" loops: */

struct MyView: View {
    var body: some View {
        VStack {
            ForEach(1...5, id: \.self) { number in
                HStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 20, height: 20)
                    Text("Circle \(number)")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

/*In this example, we use a ForEach loop to iterate through a range of numbers from 1 to 5.
Inside the loop, we create a horizontal stack (HStack) containing a blue circle and a text element
for each number in the range.
By customizing the UI elements within the loop, we can create a series of circles and texts with
varying styles and content based on the loop iteration.
This approach allows us to dynamically generate a sequence of views with different properties and
content, making it a powerful tool for creating flexible and interactive user interfaces.*/



/* In this example:
We use a ForEach loop to iterate over a range of numbers from 1 to 5 (1...5).
Inside the loop, we create a horizontal stack (HStack) containing:
A blue circle (Circle().fill(.blue)) with a fixed size (frame(width: 20, height: 20)).
A text element (Text("Circle \(number)")) displaying the current loop number, 
with blue text color (foregroundColor(.blue)).
The resulting view is a vertical stack (VStack) containing 5 horizontal stacks, 
each with a blue circle and a text element 
displaying the loop number.
This implementation demonstrates how to customize "For Each" loops to display a series of 
UI elements with varying properties, such as color, size, and text content, based on 
the current loop iteration.*/


/*Working with Real Data
Explains how to use "For Each" loops with real data by creating and populating an array of strings and then looping through the array to display the data dynamically.
Meta AI
Here's an example of working with real data using "For Each" loops: */

struct ContentView: View {
    let items = ["Apple", "Banana", "Orange", "Grapes", "Watermelon"]

    var body: some View {
        VStack {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
        }
    }
}

//or

struct MyView: View {
    let countries = ["Canada", "USA", "Mexico", "Brazil", "Germany"]

    var body: some View {
        List {
            ForEach(countries, id: \.self) { country in
                Text(country)
            }
        }
    }
}

/*In this example, we define an array items containing a list of fruit names.
We use a ForEach loop to iterate over the items array and dynamically generate a Text view for each
item in the array.
By using real data in the array, we can populate the UI elements with meaningful content and
display the data dynamically in the user interface.
This approach allows us to create dynamic lists of items, repeat UI elements, and generate views
based on real data, making it a powerful tool for building interactive and data-driven user
interfaces.*/

/*In this example:
We define an array countries containing 5 string elements.
We use a ForEach loop to iterate over the countries array.
Inside the loop, we create a Text view for each country, displaying the country name.
The resulting view is a list (List) containing 5 text elements, 
each displaying a country name.
This implementation demonstrates how to use "For Each" loops with real data, 
such as an array of strings, to display the data dynamically. 
The loop iterates over the array and creates a view for each element, making 
it easy to work with collections of data. */

//Here's an example of using a ForEach loop with views:

struct MyView: View {
    let items = [
        Item(icon: "heart", color: .red),
        Item(icon: "star", color: .yellow),
        Item(icon: "circle", color: .blue)
    ]

    var body: some View {
        HStack {
            ForEach(items, id: \.self) { item in
                VStack {
                    Image(systemName: item.icon)
                        .foregroundColor(item.color)
                    Text(item.icon)
                        .foregroundColor(item.color)
                }
            }
        }
    }
}

struct Item {
    let icon: String
    let color: Color
}

/*In this example, we define a struct Item that represents an item with an icon and a color.
We create an array items containing three Item instances with different icons and colors.
We use a ForEach loop to iterate over the items array and dynamically generate a VStack containing
an Image and a Text view for each item.
By customizing the UI elements based on the properties of each item, we can create a series of
views with different icons and colors, making it a powerful tool for building dynamic and
interactive user interfaces.*/

/* In this example:
We define an array items containing 3 Item structs, each with an icon name and a color.
We use a ForEach loop to iterate over the items array.
Inside the loop, we create a vertical stack (VStack) containing:
An image view (Image) displaying the icon, with the color set to the item's color.
A text view (Text) displaying the icon name, with the color set to the item's color.
The resulting view is a horizontal stack (HStack) containing 3 vertical stacks, each 
displaying an icon and its name in a different color.*/