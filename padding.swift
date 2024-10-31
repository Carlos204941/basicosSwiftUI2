/* In SwiftUI, you can add padding to a view using 
 the padding() modifier. Here's an example:*/

struct MyView: View {
    var body: some View {
        Text("Hello, World!")
            .padding() // adds default padding
    }
}


//You can also specify the amount of padding to add:
struct MyView: View {
    var body: some View {
        Text("Hello, World!")
            .padding(20) // adds 20 points of padding
    }
}


//Or, you can specify the padding for each edge individually:
struct MyView: View {
    var body: some View {
        Text("Hello, World!")
            .padding(.top, 20) // adds 20 points of padding to the top
            .padding(.bottom, 20) // adds 20 points of padding to the bottom
            .padding(.leading, 20) // adds 20 points of padding to the leading edge
            .padding(.trailing, 20) // adds 20 points of padding to the trailing edge
    }
}

//You can also use the padding(_:) modifier with a EdgeInsets value to specify the padding for each edge:
struct MyView: View {
    var body: some View {
        Text("Hello, World!")
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
    }
}

/* In SwiftUI, you can apply the padding() modifier multiple times 
to a view, and each application will 
add to the existing padding.
There is no strict limit to the number of times you can apply padding, 

but excessive use can lead to unexpected layout behavior or performance issues.
Here are some guidelines:
You can apply padding() up to 5-6 times without issues.
Applying padding() more than 10 times may lead to performance issues.
Applying padding() excessively (e.g., 20-30 times) may lead to unexpected 
layout behavior or errors.
If you need to apply padding multiple times, consider using a single padding() 
modifier with an EdgeInsets value, as shown in my previous example. This can 
help simplify your code and avoid potential issues.
If you encounter issues or performance problems, consider refactoring your 
design or using alternative layout approaches, such as using Spacer() 
or GeometryReader to manage spacing and layout.*/ 


/* The padding() modifier adds padding to the view's content, 
 not the view itself. This means that the view's frame will 
 be larger than its content, but the content will still be 
 centered within the view. If you want to add padding to the 
 view itself, you can use the background() modifier to add a 
 background color or shape that includes the padding. */

 struct MyView: View {
    var body: some View {
        Text("Hello, World!")
            .background(
                Color.white
                    .padding() // adds padding to the background
            )
    }
}

/* In this example, the background() modifier is used to add a white background 
color to the Text view. The padding() modifier is then applied to the background, 
which adds padding to the content area of the view.
By using background() with padding(), you can create a view with a padded content area, 
while keeping the content itself unchanged.
Note that you can also use other shapes, like Rectangle() or RoundedRectangle(),
instead of Color to create a background shape that includes the padding.*/

/* In SwiftUI, you can create complex layouts by nesting views and frames 
and using padding to arrange them. */

struct MyView: View {
    var body: some View {
        Frame(maxWidth: .infinity, maxHeight: .infinity) // outer frame
            .background(Color.gray)
            .padding() // adds padding to the outer frame
            .overlay(
                Frame(maxWidth: .infinity, maxHeight: .infinity) // inner frame
                    .background(Color.white)
                    .padding() // adds padding to the inner frame
                    .overlay(
                        Text("Hello, World!") // content
                            .padding() // adds padding to the content
                    )
            )
    }
}

In this example, /*we have:
An outer frame with a gray background, with padding added.
An inner frame with a white background, with padding added.
The content (Text view) with padding added.
By nesting frames and using padding, you can create complex layouts 
with precise control over spacing and arrangement.
Remember, you can also use other views, like VStack or HStack, 
to arrange your content, and combine them with frames and padding 
to create even more complex layouts.*/

/*In SwiftUI, the overlay(_:) modifier is used to add a new view on top of 
an existing view. The new view is positioned relative to the existing view, 
and can be used to add additional content, such as text, images, or shapes.
In the example I provided earlier: */

Frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.gray)
    .padding()
    .overlay(
        Frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .padding()
            .overlay(
                Text("Hello, World!")
                    .padding()
            )
    )

    /* The overlay(_:) modifier is used twice:
The first overlay(_:) adds a new frame on top of the gray background frame. 
This new frame has a white background and padding.
The second overlay(_:) adds the Text view ("Hello, World!") on top of the 
white background frame.

The resulting view hierarchy is:
Gray background frame (with padding)
White background frame (with padding)
Text view ("Hello, World!") (with padding)

The overlay(_:) modifier allows you to create complex view hierarchies 
by adding new views on top of existing ones, while maintaining a clear and 
concise syntax.
Think of it like layers in a graphic design tool – each overlay(_:) 
adds a new layer on top of the previous one!*/

/* In Swift, the (_:) syntax is called a "trailing closure" or "closure expression". 
It's a shorthand way to pass a closure (a block of code) as an argument to a function or 
method.
The _ symbol is a placeholder for the parameter name, which is often omitted 
when using trailing closures.
Here's a breakdown:
(_:) is equivalent to a closure with a single parameter, e.g., (parameter: Type) -> ReturnType
The _ symbol represents the parameter name, which is ignored in this context
The : symbol separates the parameter from the closure's body
When you see (_:) in Swift code, it's often used to pass a closure as an argument to a 
function or method, like in the overlay(_:) example I showed earlier.
For example:*/

someView.overlay(_: {
    // closure code here
})

///In this example, someView is a SwiftUI view that has an overlay(_:) modifier applied.

/*The trailing closure { // closure code here } is passed as an argument to the overlay(_:) method,
which adds the closure's content as an overlay on top of someView.
Trailing closures are a common pattern in Swift and SwiftUI, and are used to pass
blocks of code as arguments in a concise and readable way.*/

//Is equivalent to:
someView.overlay(overlayContent: {
    // closure code here
})
/*Trailing closures make your code more concise and readable, 
especially when working with higher-order functions 
(functions that take other functions as arguments).*/