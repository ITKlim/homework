//
//  Array+Athelets.swift
//  KlimTableViewTest
//
//
//

extension Array where Element == AthletePersonModel {

    func simplified() -> [String] {
        map { "\($0.firstName) \($0.lastName)" }
    }
    
    func fullInfo() -> [String] {
        map { "\($0.firstName) \($0.lastName), \($0.sportsArea), \($0.age) years old. \($0.bio)"  }
    }
}
