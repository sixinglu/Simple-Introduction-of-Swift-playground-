/******************************
 * Simple Introduction to Swift
 ******************************/

import Cocoa  // OSX
// import UIKit  // iOS

/***** benifit of swift compare to object-C *****/
var image = NSImage(named: "1.jpg")



/**** Swift is easier to read, requires less code ****/
//NSNumber *myBoolNumber = [NSNumber numberWithBool:YES];
//var myBoolNumber ：Boolean
//myBoolNumber = "dgaweg"

var image1 = NSImage(named: "bye-bye.jpg")




/**** Swift handles strings more easily ****/
// instead of isEqualToString:
var myString = "swift"
var xxx = " haha"
myString += xxx
myString == "swift haha"


/**** Swift tuples offer compound variables ****/
var myTuple : (name: String, age: Double) = ("swift",1.5)
myTuple.age




/**** Swift is faster ****/
// GEMM algorithm (a memory-bound algorithm with sequential access of large arrays) -- 1.4x
// Initial FFT implementation (a memory-bound algorithm with random access of large arrays) -- 2.6x
// by Primate Labs on Feb. 2015





/**** Fewer name collisions with open source projects ****/
// With Swift, namespaces are based on the target that a code file
// belongs to. This means programmers can differentiate classes or
// values using the namespace identifier.

// in myLab.swif
//public class myLabmate{
//    private class func member(){
//        print("hello from the lab!")
//    }
//}

//// in the main.swift
//class myLabmate{
//    class func member(){
//        print("hello from the App!")
//    }
//}

////myLab.myLabmate.member()
//myLabmate.member()




/**** Swift supports dynamic libraries ****/
// The developer submits the app along with the libraries,
// This means Swift can evolve faster than iOS.





/**** Swift is unified with memory management ****/
// The support for Automatic Reference Counting (ARC) is complete across the procedural and object-oriented code paths.
// In Objective-C, ARC is supported within the Cocoa APIs and object-oriented code; it isn’t available, however, for procedural C code and APIs like Core Graphics.




/**** basic examples ****/
/////// loop ///////
var i=0
while i<10{
    print(i)
    i++
}

for i in 1..<100{
    sin(1000.0/Double(i))
}

for (var j = 100; j>0; j=j-2){
    print(j)
}


/////// function, from swift document  ///////
func minMax(array: [Int]) -> (min: Int, max: Int)? {  // If the tuple type to be returned from a function has the potential to have “no value” for the entire tuple, you can use an optional tuple return type to reflect the fact that the entire tuple can be nil.
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if  let bounds = minMax([8, -6, 2, 109, 3, 71]){
    print("min is \(bounds.min) and max is \(bounds.max)")
}


/////// class ///////
public class myClass{
//     private: entities can only be accessed from within the source file where they are defined.
//     internal: by default, entities can be accessed anywhere within the target where they are defined.
//     public: entities can be accessed from anywhere within the target and from any other context that imports the current target’s module.frameworks used across their projects need to mark their API as public

     var member : String
     init(name: String){
        member = "ddd"
    }
}

var myclass = myClass(name: "swfit")
myclass.member

class PlayView: NSView{  // inherentance
    
    override func drawRect(dirtyRect: NSRect) {  // can override function
        let blue = NSColor.blueColor()
        blue.setFill()
        NSRectFill(self.bounds)
        
        var bp = NSBezierPath(ovalInRect: NSInsetRect(self.bounds,20,20))
        NSColor.yellowColor().setFill()
        bp.fill()
        
    }
    
    
    // overload
    func drawRect(){
        
    }
}

var view = PlayView(frame: NSRect(x:0, y:0, width: 200, height:200))



/////// the confusing part /////
// optional values (wrapped), we have seen in previous example
var a:Int // a must be a int
var b:Int?  // b is an optional Int and it either contains an integer value, or it contains nothing (nil).

print(b)


 //Forced-Value ! exclamation mark
 //forced unwrapping, gives the xxx value if it exists, runtime error if it is nil
// If you want the actual value of that variable, you must unwrap it
// e.g. line 76 in balloon, if delete !, will have error. because the node is declare as optimal, so if we want the actual value of that variable, we must unwrap it
// e.g. line 55 in balloon, crash
// e.g. line 30 tell you how to fix


// thanks
var image2 = NSImage(named: "2.jpg")








