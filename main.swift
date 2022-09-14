import Foundation

//Defines wordArray, sortedWordArray, word, and input
var wordArray : ArraySlice<Substring> = []
//let sortedWordArray : [String]
var word : String
let textPath = "random.txt"


do {
    let contents = try NSString(contentsOfFile: textPath, encoding: String.Encoding.ascii.rawValue)
    
    let allWords = contents as String
    let allWordsArray = allWords.split(separator: "\n")
    wordArray = allWordsArray[..<20]
    //print(wordArray)

} catch {
    print("contents couldn't be loaded")
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
//Uses bubble sorting to sort array
func bubbleSort(unsortedStrings: [String]) -> [String] {

    // Defining variables
    var strings = unsortedStrings
    var pass  = 0
    var swaps = 0
    var firstIndex = 0
    var secondIndex = 1
    var noSwapPass = false

    // Passes through the array until noSwapPass is true
    repeat {
        // Starts a pass
        swaps = 0
        while secondIndex < strings.count {

            // Checks whether to swap or not, then swaps
            if stringGreaterThan(string1: strings[firstIndex], string2: strings[secondIndex]) {
                swap(strings:&strings, firstIndex:firstIndex, secondIndex:secondIndex)
                swaps += 1
            }
            
            // Moves to check the next pair of strings
            firstIndex += 1
            secondIndex += 1
        }

        // Finishes pass and resets index
        pass += 1
        firstIndex = 0
        secondIndex = 1
  
        // Sets noSwapPass to true if the pass had no swaps
        if swaps == 0 {
            noSwapPass = true
        }
        
    } while !noSwapPass
    return strings
}

/*
// Keeps appending the input to wordArray till a blank input is made
repeat {
    word = readLine()!
    wordArray.append(word)
} while word != ""
// removes blank input
wordArray.removeLast()

 */

//bubblesorts the wordArray and assigns it to sortedWordArray
//sortedWordArray = bubbleSort(unsortedStrings: wordArray)
//prints every word in the sortedWordArray on a new line
for word in wordArray {
    print(word)
    }
    


