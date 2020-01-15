//: # Gig Poster 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![runaways-no-grid](runaways-no-grid.png "The Runaways")
 ![runaways-with-grid](runaways-with-grid.png "The Runaways")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

// Begin your solution here...
// thickness x axis 14 corner 11
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)
// Black Bottom
canvas.fillColor = black
for positionX in stride(from: 0, to: 16, by: 4) {
    canvas.drawRectangle(at: Point(x:11+14*positionX, y:0), width: 14, height: 25+14*positionX)
}

for reverse in stride(from: 0, to: 16, by: 4){
    canvas.drawRectangle(at: Point(x:400-25-14*reverse, y:0), width: 14, height: 25+14*reverse)
}
// Left side Black
for positionX in stride(from: 0, to: 16, by: 4) {
    canvas.drawRectangle(at: Point(x:0, y:11+14*positionX), width: 25+14*positionX, height:14)
}

for reverse in stride(from: 0, to: 16, by: 4){
    canvas.drawRectangle(at: Point(x:0, y:400-25-14*reverse), width:25+14*reverse , height:14 )
}
// Right side Black

for rightside in stride(from: 0, to: 16, by: 4) {
    canvas.drawRectangle(at: Point(x:400-25-14*rightside,y:11+14*rightside), width: 11+14*rightside+25, height: 14)
}

for rightside in stride(from: 0, to: 16, by: 4) {
    canvas.drawRectangle(at: Point(x:400-25-14*rightside,y:400-25-14*rightside), width: 11+14*rightside+25, height: 14)
}

// Upside down
for positionX in stride(from: 0, to: 16, by: 4) {
    canvas.drawRectangle(at: Point(x:11+14*positionX, y:400-25-14*positionX), width: 14, height: 25+14*positionX)
}

for positionX in stride(from: 0, to: 16, by: 4) {
    canvas.drawRectangle(at: Point(x:400-25-14*positionX, y:400-25-14*positionX), width: 14, height: 25+14*positionX)
}





PlaygroundPage.current.liveView = canvas

