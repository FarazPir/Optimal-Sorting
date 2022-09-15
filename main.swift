import Foundation

//Defines wordArray, sortedWordArray, word, and input
var wordArray : ArraySlice<Substring> = []
var sortedWordArray : ArraySlice<Substring> = []
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
func stringGreaterThan(string1: Substring, string2: Substring) -> Bool {
    
    //filters out anything that isn't a letter to sort only the letters
    let s1 = string1.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let s2 = string2.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    return s1.lowercased() > s2.lowercased()
}

// swaps two elements in an array
func swap(strings: inout ArraySlice<Substring>, firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
    
}
//Uses bubble sorting to sort array
func insertionSort(strings: ArraySlice<Substring>) -> ArraySlice<Substring> {

    // Defining variables
    var unsortedStrings = strings[1...]
    var sortedStrings = strings[..<1]
    var swaps = 0
    var firstIndex = 0
    var secondIndex = 1

    while !unsortedStrings.isEmpty  {
        if stringGreaterThan(string1: oldArra[firstIndex], string2: oldArray[secondIndex]) {
            swap(strings:&strings, firstIndex:firstIndex, secondIndex:secondIndex)
        }
    
    return sortedStrings
}


//insertionsorts the wordArray and assigns it to sortedWordArray
sortedWordArray = insertionSort(unsortedStrings: wordArray)
//prints every word in the sortedWordArray on a new line
for sortedWordArray in wordArray {
    print(word)
    }
    


