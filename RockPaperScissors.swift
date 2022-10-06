//
//  RockPaperScissors.swift
//  
//
//  Created by cecily li on 10/5/22.
//

import Foundation

func getUserChoice(userInput: String) -> String {
    if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
        return userInput
    } else {
        return "You can only enter rock, paper, or scissors. Try again."
    }
}
func getComputerChoice() ->String {
    let randomNumber = Int.random(in: 0...2)
    switch randomNumber {
    case 0:
        return "rock"
    case 1:
        return "paper"
    case 2:
        return "scissors"
    default:
        return "Something went wrong"
    }
}
func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
    var decisine = "It's a tie"
    switch userChoice {
    case "rock":
        if compChoice == "paper" {
            decisine = "The computer won"
        } else if compChoice == "scissors" {
            decisine == "The user won"
        }
    case "paper":
        if compChoice == "scissors" {
            decisine = "The computer won"
        } else if compChoice == "rock" {
            decisine == "The user won"
        }
    case "scissors":
        if compChoice == "rock" {
            decisine = "The computer won"
        } else if compChoice == "paper" {
            decisine == "The user won"
        }
    default:
        decisine = "Something went wrong"
    }
    return decisine
}
let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()
print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))
