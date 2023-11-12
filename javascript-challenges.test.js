// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.
describe('deCoder', () => {
const secretCodeWord1 = "Lackadaisical"// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"  // Expected output: "3cc3ntr1c"

    it('takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.', () => {
        expect(deCoder(secretCodeWord1)).toEqual('L4ck4d41s1c4l')
        expect(deCoder(secretCodeWord2)).toEqual('G0bbl3dyg00k')
        expect(deCoder(secretCodeWord3)).toEqual('3cc3ntr1c')
    })
})



// b) Create the function that makes the test pass.

const deCoder = (string) => {
    return string
    .replace(/a/g, '4')
    .replace(/A/g, '4')
    .replace(/e/g, '3')
    .replace(/E/g, '3')
    .replace(/I/g, '1')
    .replace(/i/g, '1')
    .replace(/o/g, '0')
    .replace(/O/g, '0')
}

// Pseudo code:
// Create a function that will take a string as an argument
// Use .replace() on the passed arguement to return the individual characters to another character of my choosing.
// I had to look up the .replace() method on W3 schools. It works by placing the character you want changed inside the (/ /) followed by the letter g (g allows us to change all the characters of that same type rather than just the first time it appears) then putting a string that you want to replace that character. 

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
describe('fullHouse', () => {
    const hand1 = [5, 5, 5, 3, 3] // Expected output: true
    const hand2 = [5, 5, 3, 3, 4] // Expected output: false
    const hand3 = [5, 5, 5, 5, 4] // Expected output: false
    const hand4 = [7, 2, 7, 2, 7] // Expected output: true
    
    it('Takes in an array of 5 numbers and determines whether or not the array is a full house.', () => {
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
    })
})


// b) Create the function that makes the test pass.

// Pseudo code: 
//  create an array called fullHouse that takes an array of 5 numbers as an arguement
// make a conditional statement to verify the length of the arrray equals 5 and sort that array from least to greatest to make it easier to compare.
//  make a conditional to see if there is a pair at the beginning of the array and a three of  a kind at the end. 
// use the OR operator to check if the three of a kind is at the beginning and the pair is at the end.
// return true if its a full house and false if it is not

const fullHouse = (array) => {
    if (array.length === 5){
        array.sort((a, b) => a - b)
    } 
    if (
        (array[0] === array[1] && array[2] === array[4]) || 
        (array[0] === array[2] && array[3] === array[4])
        ) {
            return true
}
    return false
}