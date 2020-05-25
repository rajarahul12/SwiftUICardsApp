//
//  card.swift
//  courses
//
//  Created by Raja Rahul on 25/05/20.
//

import SwiftUI

struct card: View {
    var course: Course
    var body: some View {
        ZStack{
            Image(course.courseImage).offset(y: 40)
            
            VStack{
                Text(course.courseName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(course.coursePrice)
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            }.offset(y: -220)
            
            Button(action: ({
                print("Button clicked")
            }), label: {
                HStack{
                    Text("Buy Now")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("LCOred"))
                    Image(systemName: "arrow.right.square")
                    .accentColor(Color("LCOred"))
                }
                .padding(.horizontal,40)
                .padding(.vertical,10)
                .background(Color.white)
                .clipShape(Capsule())
            }).offset(y: -150)
            
            Text("LearnToCode")
                .frame(width:370, height:30)
                .foregroundColor(Color("LCOred"))
                .background(Color.white)
                .offset(y:240)
                .rotationEffect(.init(degrees: 20))
            
        }
        .frame(width: 335, height: 550)
        .background(course.courseColor)
        .cornerRadius(18)
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card(course: courseList[0])
    }
}
