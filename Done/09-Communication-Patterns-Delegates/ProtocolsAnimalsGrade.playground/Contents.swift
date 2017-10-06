
import UIKit
import PlaygroundSupport


// Problem #1
// Modeling Data (Structs, Enums, Classes)
// We want to represent Students and Courses
// Students have a list of courses that they take
// Courses also have a list of students
// Write a function in courses that prints out the names of all the students in a course
// Write an instance of student with a list of courses and an instance of course that has a list of students

// Test out the function in course that prints out its list of students

class Students {
    
    var studentName: String
    var courseList = [String]()
    
    init(studentName: String){
        self.studentName = studentName
    }
    
    func addCourse(add: String) {
        let course = Courses(courseName: add)
        courseList.append(course.courseName)
//        print(self.studentName, "is students of these courses",courseList)
    }
    
    func printCourses() {
        print(courseList)
    }
    
}

class Courses {

    var courseName: String
    var studentList = [String]()
    
    init(courseName: String) {
        self.courseName = courseName
    }
    
    func addStudent(add: String) {
        let student = Students(studentName: add)
        studentList.append(student.studentName)
//        print(studentList, "are in this", courseName, "class")
    }
    
    func printRoster() {
        print(studentList)
    }
}


//var Johnathan = Students(studentName: "Johnathan")
//Johnathan.addCourse(add: "English")
//Johnathan.addCourse(add: "Math")
//Johnathan.printCourses()
//
//
//var Math = Courses(courseName: "Math")
//Math.addStudent(add: "Johnathan")
//Math.addStudent(add: "Mike")
//Math.printRoster()





// Problem #2
// Protocols & Modeling (Structs, Enums, Classes)
/*:
 We need to model different types of Animals in the animal kindom
 a. Animals need to have a species
 b. All Animals need to eat food
 c. Some Animals can Jump, some can Fly
 d. Create instance of 3 animals with different species, some can fly, can jump, some can fly and jump
 e. Put them in an array and print out animals than can only fly
 
*/

protocol Fly {
    func fly()
}

protocol Jump {
    func jump()
}

protocol Animal {
    var species: String { get set }
    func eat(food: String)
}

struct Dog: Animal, Jump {
    
    var species: String
    
    func eat(food: String){
        print(food)
    }
    
    func jump() {
        print("jumped")
    }

}

struct Bird: Animal, Fly {
    
    var species: String
    
    func eat(food: String){
        print(food)
    }
    
    func fly() {
        print("flew")
    }
    
}

struct Squirrel: Animal, Jump, Fly {
    
    var species: String
    
    func eat(food: String){
        print(food)
    }
    
    func fly() {
        print("flew")
    }
    
    func jump() {
        print("jumped")
    }
    
}

let dog = Dog(species: "dog")
let bird = Bird(species: "bird")
let squirrel = Squirrel(species: "squirrel")

let array_list: [Animal] = [dog, bird, squirrel]

for animal in array_list {
    if animal is Jump {
//        print(animal, "jumps")
    }
}



// Delegates Review
/*:
 
*/


//protocol MeansOfCommunicatingBetweenSenderAndReciever {
//    func senderSent(something: String)
//}
//
//struct Sender {
//    var delegate: MeansOfCommunicatingBetweenSenderAndReciever?
//
//    func somethingHappened() {
//        //Some action I want to send
//        delegate?.senderSent(something: "Hey")
//    }
//}
//
//struct Reciever: MeansOfCommunicatingBetweenSenderAndReciever {
//
//    func senderSent(something: String) {
//        print(something)
//    }
//}

//var sender = Sender()
//let reciever = Reciever()
//
//sender.delegate = reciever
//
//sender.somethingHappened()


// Problem #3
/*
 You have a UIView called touchable view that handles a tap.
 a. Write a delegate that delegates the touch action to another view/viewcontroller (SomeViewController)
 
 b. Draw a diagram for the delegation between the TouchableView and the ViewController
*/
class TouchableView: UIView {
    
    let touchGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(tap:)))
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addGestureRecognizer(touchGesture)
        
    }
    
    @objc func handleTap(tap: UITapGestureRecognizer) {
        print("Tapped")
    }
}

let touchView = TouchableView(
    frame: CGRect(x: 0, y: 0, width: 100, height: 100)
)

touchView.backgroundColor = UIColor.red

// ViewController that will recieve taps
class SomeViewController: UIViewController {
    
    let touchableView = touchView
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



let vc = SomeViewController()



// Implement Delegation from problem #3


// Extra material to make playground work
PlaygroundPage.current.liveView = touchView
