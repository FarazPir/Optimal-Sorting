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


/*
 
    var marker = 1
    var stringArray = strings
    var unsortedStrings = strings[marker...]
    var sortedStrings = strings[..<marker]
    var swaps = 0
    var firstIndex = 0
    var secondIndex = 1    

    //print("funcition hapenigngn")
    while !unsortedStrings.isEmpty  {
        firstIndex = 0
        secondIndex = 1
        
        while firstIndex >= 0 {
            print("loop 2 happpend")
        if stringGreaterThan(string1: stringArray[firstIndex], string2: stringArray[secondIndex]) {
            swap(strings:&stringArray, firstIndex:firstIndex, secondIndex:secondIndex)
            print("it swapped")
            secondIndex = firstIndex
        }

        firstIndex -= 1

        }
        
        marker += 1
        unsortedStrings = stringArray[marker...]
        sortedStrings = stringArray[..<marker]
    }
    
    return sortedStrings
    }
 */



//insertionsorts the wordArray and assigns it to sortedWordArray
sortedWordArray = insertionSort(strings: wordArray)
//prints every word in the sortedWordArray on a new line

for word in sortedWordArray {
    print(word)
    }
    
 
    


