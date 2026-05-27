//
//  Date+Format.swift
//  DIDPOOLFit
//
//  Created by admin on 27.05.2026.
//

import Foundation

extension Date{
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }
}
