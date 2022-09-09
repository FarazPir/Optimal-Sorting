//Defines wordArray, sortedWordArray, and word
var wordArray = [String]()
let sortedWordArray : [String]
var word : String



//compares the ascii values in two strings to figure out if the first string is greater than the second string
func stringGreaterThan(string1: String, string2: String) -> Bool {
    return string1.lowercased() > string2.lowercased()
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
    //var totalSwaps = 0
    var firstIndex = 0
    var secondIndex = 1
    var noSwapPass = false

    // Passes through the array until noSwapPass is true
    repeat {

        // Prints details of the last pass or before the sorting starts
        //print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(strings)")
    

        // Starts a pass
        swaps = 0
        while secondIndex < strings.count {

            // Checks whether to swap or not, then swaps
            if stringGreaterThan(string1: strings[firstIndex], string2: strings[secondIndex]) {
                swap(strings:&strings, firstIndex:firstIndex, secondIndex:secondIndex)
                swaps += 1
                //totalSwaps += 1       
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


// Keeps appending the input to wordArray till a blank input is made
repeat {
    word = readLine()!
    wordArray.append(word)
    //index += 1
} while word != ""
// removes blank input
wordArray.removeLast()

//bubblesorts the wordArray and assigns it to sortedWordArray
sortedWordArray = bubbleSort(unsortedStrings: wordArray)

for word in sortedWordArray {
    print(word)
    }

