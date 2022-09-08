var index = 0 
var wordArray = [String]()
var word : String

repeat {
    word = readLine()!
    wordArray.append(word)
    index += 1
} while word != ""
wordArray.removeLast()

for word in wordArray {
    print(word)
}

   
