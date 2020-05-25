//
//  courseModal.swift
//  courses
//
//  Created by Raja Rahul on 25/05/20.
//

import SwiftUI

struct Course: Identifiable{
    var id = UUID()
    var courseName: String
    var coursePrice: String
    var courseImage: String
    var courseColor: Color
}
