//
//  HackingWithSwift.swift
//  HackingWithSwift
//
//  Created by Rathi, Saharsh on 02/12/2024.
//

import Testing
//@Test func string_
func get_age() -> Int {
    return 25
}

extension Tag {
  @Tag static var day2: Self
}

@Suite(.tags(.day2))
struct Day2 {

    @Test func string_interpolation() {
        let first = "saharsh"
        let last = "rathi"
        let full_expected = "saharsh rathi"
        let full = "\(first) \(last)"
        #expect(full == full_expected)
    }

 

    @Test("string interpolation")
    func get_double_age(){
        let age = get_age()
        let double_age = age * 2
        #expect(double_age == 50)
        
    }
}

struct Checkpoint1 {
    let temperature = 23.0
    func convert_to_f(celcius: Double) -> Double{
        return ((celcius * 9) / 5)  + 32
    }
    @Test func make_sure_match(){
        #expect(convert_to_f(celcius: temperature) == 73.4)
    }
    func display(_ c: Double) -> String {
        return "\(c)°C \(convert_to_f(celcius: c)) F"
    }
    @Test func string_inter(){
        #expect(display(23) == "23.0°C 73.4 F")
    }
    
}
