//
//  GoalCardDTO.swift
//  DIDPOOLFit
//
//  Created by admin on 28.05.2026.
//

import UIKit

struct GoalCardDTO: Hashable {
    
    static func == (lhs: GoalCardDTO, rhs: GoalCardDTO) -> Bool {
        lhs.name == rhs.name
    }
    
    var image: UIImage
    var name: String
    var description: String
}
