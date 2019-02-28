
import Foundation


// reading csv file
let dirs = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)

let fileURL = Bundle.main.url(forResource: "TurnData", withExtension: "csv")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

// loading csv file into 2D array
var parsedCSV: [[String]] = content.components(separatedBy: "\r").map { $0.components(separatedBy: ";") }



parsedCSV.remove(at: 0)

// casting string value to int
let castedToInt = parsedCSV.map { $0.map { Int($0)! } }

// sorting the points ascending based on lattitude/longitude
var sortedPoints = castedToInt.sorted { ($0[0], $0[1]) < ($1[0], $1[1]) }


// function to calculate distance between two points
func calculateDistance(point a: [Int], point b: [Int]) -> Double {
    let addition = (b.first! - a.first!) * (b.first! - a.first!) + (b.last! - a.last!) * (b.last! - a.last!)
    let distance = Double(addition).squareRoot()
    
    return distance
}

// The idea is to use two points for calculating distance
// after sorting all the points based on lattitude and longitudes
// the lowest lattitude/longitude is the first element in the array
// the highest lattitude/longitude is the last element in the array

while sortedPoints.count > 0 {
    print("A is \(sortedPoints.first!) B is \(sortedPoints.last!) and Distance is \(calculateDistance(point: sortedPoints.first!, point: sortedPoints.last!))")
    // smallest distance means possible intersection point
    
    // removing first and last elements after calculating the distance
    sortedPoints.removeFirst()
    sortedPoints.removeLast()
}



