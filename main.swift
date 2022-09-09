//Defins wordArray, word, and index for wordArray
var wordArray = [String]()
var word : String
var index = 0


//compares the asciivalue of two characters to see if the the second character is less than the first
func charLessThan(char1: String, char2: String) -> Bool {
    return char1.lowercased() < char2.lowercased()
}

func sortStuff(array: [String]){
    var array = array
    array.sort(by: charLessThan)
    for array in array {
        print(array)
    }
    }

// Keeps appending the input till word Array till a blank input is made
repeat {
    word = readLine()!
    wordArray.append(word)
    index += 1
} while word != ""
// removes blank input
wordArray.removeLast()

sortStuff(array: wordArray)












/* 

//Defins wordArray, word, and index for wordArray
var wordArray = [String]()
var word : String
var index = 0


// swaps two elements in an array
func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
    
}

//compares the asciivalue of two characters to see if the the second character is less than the first
func charLessThan(char1: Character, char2: Character) -> Bool? {
    let char1Value = char1.asciiValue!
    let char2Value = char2.asciiValue!
    if char1Value < char2Value {
        return false
    } else if char1Value > char2Value {
        return true
    } else {
        return nil
    }
    }

//Compares the letterIndex's letter of two words
//Example: if the letterIndex is 0 it will compare the 1st letter of word1 with the 1st letter of word2, if letterIndex is 1 it will compare the 2nd letter of word1 with the 2nd letter of word 2, etc.
func letterLessThan(word1: String, word2: String, letterIndex: Int) -> Bool? {
    let index1 = word1.index(word1.startIndex, offsetBy: letterIndex)
    let index2 = word2.index(word2.startIndex, offsetBy: letterIndex)
    return charLessThan(char1: word1[index1], char2: word2[index2])
}

//Compares first characters of both words, if they're the same it moves onto the next one, untill it can figure out which word comes first
func wordLessThan(word1: String, word2: String) -> Bool {
    return true
}  


// Keeps appending the input till word Array till a blank input is made
repeat {
    word = readLine()!
    wordArray.append(word)
    index += 1
} while word != ""
// removes blank input
wordArray.removeLast()

// For testing wordLessThan, prints true or false, compares first word in wordArray with the 2nd word in wordArray
//print(wordLessThan(word1: wordArray[0], word2: wordArray[1]))

//prints all the words in word array

for word in wordArray {
    print(word)
    }

 
 */
