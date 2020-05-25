//
//  ContentView.swift
//  courses
//
//  Created by Raja Rahul on 25/05/20.
//

import SwiftUI

struct ContentView: View {
    
    var courses:[Course] = courseList
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Courses")
                    .fontWeight(.bold)
                    .font(.title)
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing: 20){
                       ForEach(courses) { item in
                            card(course: item)
                        }
                    }
                }
            }
            VStack{
                Text("Bundles")
                    .fontWeight(.bold)
                    .font(.title)
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing: 20){
                        ForEach(courses) { item in
                            card(course: item)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courses: courseList)
    }
}
