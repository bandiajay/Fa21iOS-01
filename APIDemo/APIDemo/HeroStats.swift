//
//  HeroStats.swift
//  APIDemo
//
//  Created by Ajay Bandi on 11/16/21.
//

import Foundation
import UIKit

struct HeroStats : Codable{
    var localized_name : String
    var primary_attr : String
    var attack_type : String
    var legs : Int
}
