//
//  MorseDecoder.swift
//  
//
//  Created by cecily li on 10/4/22.
//

import Foundation
//In this project, we are going to write a Swift program that uses dictionaries to encrypt and decrypt secret Morse code messages.
var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

var letterToMorse = [
    "a": ".-",
    "b": "-...",
    "c": "-.-.",
    "d": "-..",
    "e": ".",
    "f": "..-.",
    "g": "--.",
    "h": "....",
    "i": "..",
    "j": ".---",
    "k": "-.-",
    "l": ".-..",
    "m": "--",
    "n": "-.",
    "o": "---",
    "p": ".--.",
    "q": "--.-",
    "r": ".-.",
    "s": "...",
    "t": "-",
    "u": "..-",
    "v": "...-",
    "w": ".--",
    "x": "-..-",
    "y": "-.--",
    "z": "--.."
  ]

var morseText = ""
for element in englishText {
    if let morseChar = letterToMorse["\(element)"] {
        morseText += morseChar + " "
    } else {
        morseText += "   "
    }
}
print(morseText)
var decodedMessage = ""
var morseCodeArray: [String] = []
var currMorse = ""
for char in secretMessage {
    if char != " " {
        currMorse.append(char)
    } else {
        switch currMorse {
        case "":
            currMorse += " "
        case " ":
            morseCodeArray.append(" ")
            currMorse = ""
        default:
            morseCodeArray.append(currMorse)
            currMorse = ""
        }
    }
}
morseCodeArray.append(currMorse)
print(morseCodeArray)

var morseToLetter: [String:String] = [:]
for (letter, morseChar) in letterToMorse {
    morseToLetter[morseChar] = letter
}
print(morseToLetter.values)
for morseValue in morseCodeArray {
    if let letterChar = morseToLetter[morseValue] {
        decodedMessage.append(letterChar)
    } else {
        decodedMessage.append(" ")
    }
}
print(decodedMessage)
