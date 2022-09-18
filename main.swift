import Foundation

//Defines wordArray, sortedWordArray, word, and input
var wordArray : [String] = []
var sortedWordArray : [String] = []
var word : String
let textPath = "random.txt"


var line = readLine()
while line != nil && line != "" && line != " " {
    wordArray.append(line!)

    line = readLine()
}


//compares the ascii values in two strings to figure out if the first string is greater than the second string
func stringGreaterThan(string1: String, string2: String) -> Bool {
    
    //filters out anything that isn't a letter to sort only the letters
    let s1 = string1.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let s2 = string2.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    return s1.lowercased() > s2.lowercased()
}

// swaps two elements in an array
func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
    
}

 func sort(strings: [String]) -> [String] {

    var stringArray = strings    
            
    for i in 0 ..< stringArray.count{
        var marker = i
        var marker2 = i + 1
        while marker2 < stringArray.count {
         if stringGreaterThan(string1: stringArray[marker], string2: stringArray[marker2]) {
             marker = marker2
        } else if !stringGreaterThan(string1: stringArray[marker], string2: stringArray[marker2]) {
            marker2 += 1
        }
            
        }
        swap(strings:&stringArray, firstIndex:i, secondIndex:marker)
    }
     
    return stringArray
}




//insertionsorts the wordArray and assigns it to sortedWordArray
sortedWordArray = sort(strings: wordArray)
//prints every word in the sortedWordArray on a new line

for word in sortedWordArray {
    print(word)
    }
