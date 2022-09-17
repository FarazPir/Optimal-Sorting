import Foundation

//Defines wordArray, sortedWordArray, word, and input
var wordArray = [String]()
var sortedWordArray :  [String]






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
//Uses bubble sorting to sort array
func insertionSort(strings: [String]) -> [String] {

    var stringArray = strings
    for index in 1..<stringArray.count {
        var marker = index
            while marker > 0 && stringGreaterThan(string1: stringArray[marker-1], string2: stringArray[marker]) {
                swap(strings:&stringArray, firstIndex:marker - 1, secondIndex:marker)
                marker -= 1
        }
    }
    
    return stringArray
}



//checks to see if input is nil or blank then appends input and checks next input
var word = readLine()
while word != nil && word != "" {
    wordArray.append(word!)
    word = readLine()
}



//insertionsorts the wordArray and assigns it to sortedWordArray
sortedWordArray = insertionSort(strings: wordArray)
//prints every word in the sortedWordArray on a new line

for word in sortedWordArray {
    print(word)
    }
    
 
    


