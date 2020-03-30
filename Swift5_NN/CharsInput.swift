//
//  CharsInput.swift
//  Swift5_NN
//
//  Created by Роенко Денис on 30.03.2020.
//  Copyright © 2020 Denis Roenko. All rights reserved.
//

import Foundation

func CharToDouble(char: Character) -> Double {
    var result: Double
    
    switch char {
    case "0":
        result = 0.00
    case "1":
        result = 0.01
    case "2":
        result = 0.02
    case "3":
        result = 0.03
    case "4":
        result = 0.04
    case "5":
        result = 0.05
    case "6":
        result = 0.06
    case "7":
        result = 0.07
    case "8":
        result = 0.08
    case "9":
        result = 0.09
    case "a":
        result = 0.10
    case "b":
        result = 0.11
    case "c":
        result = 0.12
    case "d":
        result = 0.13
    case "e":
        result = 0.14
    case "f":
        result = 0.15
    case "g":
        result = 0.16
    case "h":
        result = 0.17
    case "i":
        result = 0.18
    case "j":
        result = 0.19
    case "k":
        result = 0.20
    case "l":
        result = 0.21
    case "m":
        result = 0.22
    case "n":
        result = 0.23
    case "o":
        result = 0.24
    case "p":
        result = 0.25
    case "q":
        result = 0.26
    case "r":
        result = 0.27
    case "s":
        result = 0.28
    case "t":
        result = 0.29
    case "u":
        result = 0.30
    case "v":
        result = 0.31
    case "w":
        result = 0.32
    case "x":
        result = 0.33
    case "y":
        result = 0.34
    case "z":
        result = 0.35
    case "A":
        result = 0.36
    case "B":
        result = 0.37
    case "C":
        result = 0.38
    case "D":
        result = 0.39
    case "E":
        result = 0.40
    case "F":
        result = 0.41
    case "G":
        result = 0.42
    case "H":
        result = 0.43
    case "I":
        result = 0.44
    case "J":
        result = 0.45
    case "K":
        result = 0.46
    case "L":
        result = 0.47
    case "M":
        result = 0.48
    case "N":
        result = 0.49
    case "O":
        result = 0.50
    case "P":
        result = 0.51
    case "Q":
        result = 0.52
    case "R":
        result = 0.53
    case "S":
        result = 0.54
    case "T":
        result = 0.55
    case "U":
        result = 0.56
    case "V":
        result = 0.57
    case "W":
        result = 0.58
    case "X":
        result = 0.59
    case "Y":
        result = 0.60
    case "Z":
        result = 0.61
        
    default:
        result = 1.0
    }
    
    return result
}

// Bitcoin addr to inputs for neurons
func AddrToArray(str: String) -> [Double] {
    var result = [Double]()
    for char in addr {
        result.append(CharToDouble(char: char))
    }
    return result
}

func DoubleToKeyChar(n: Double) -> String {
    var result: String
    switch n {
    case (0.0625*1): result = "0"
    case (0.0625*2): result = "1"
    case (0.0625*3): result = "2"
    case (0.0625*4): result = "3"
    case (0.0625*5): result = "4"
    case (0.0625*6): result = "5"
    case (0.0625*7): result = "6"
    case (0.0625*8): result = "7"
    case (0.0625*9): result = "8"
    case (0.0625*10): result = "9"
    case (0.0625*11): result = "a"
    case (0.0625*12): result = "b"
    case (0.0625*13): result = "c"
    case (0.0625*14): result = "d"
    case (0.0625*15): result = "e"
    case (0.0625*16): result = "f"
    default: result = ""
    }
    
    return result
}

func ArrayToKey(arr: [Double]) -> String {
    var result = ""
    arr.forEach{
        result += DoubleToKeyChar(n: $0)
    }
    
    return result
}

func KeyCharToDouble(char: Character) -> Double {
    var result: Double
    
    switch char {
    case "0": result = 0.0625*1
    case "1": result = 0.0625*2
    case "2": result = 0.0625*3
    case "3": result = 0.0625*4
    case "4": result = 0.0625*5
    case "5": result = 0.0625*6
    case "6": result = 0.0625*7
    case "7": result = 0.0625*8
    case "8": result = 0.0625*9
    case "9": result = 0.0625*10
    case "a": result = 0.0625*11
    case "b": result = 0.0625*12
    case "c": result = 0.0625*13
    case "d": result = 0.0625*14
    case "e": result = 0.0625*15
    case "f": result = 0.0625*16
    default: result = 0.0
    }
    
    return result
}

func KeyToArray(str: String) -> [Double] {
    var result = [Double]()
    for char in str {
        result.append(KeyCharToDouble(char: char))
    }
    
    return result
}

func StringToBytes(str: String) -> [String] {
    var keyArray = [String]()
    var index = 0
    var buffer = ""
    for char in key {
        buffer += String(char)
        if index % 2 != 0 {
            keyArray.append(buffer)
            buffer = ""
        }
        index += 1
    }
    return keyArray
}

func StringHexArrToIntArr(str: String) -> [UInt64] {
    var intArray = [UInt64]()

    str.forEach{
        var value: UInt64 = 0
        Scanner(string: $0).scanHexInt64(&value)
        intArray.append(value)
    }
    return intArray
}
