//
//  Setting Page.swift
//  WorkOutTimer
//
//  Created by Kai Ye on 6/24/21.
//
import Foundation
import SwiftUI
struct Exercise_Creating: View {
    init(_ Exercise:Binding<Exercise>) {
        self._Exercise = Exercise
    }
    @Binding var Exercise:Exercise
    @State private var Name:String = ""
    @State private var BreakTimePicker = 0
    @State private var ExerciseTimePicker = 0
    @State private var availableSec:[Int] = Array(1...60)
    @State var PickerIndex:Int = 0
    var body: some View {
        VStack{
            VStack{
                Text("Exercise Name:  \(Exercise.NameOfExercise)").font(.system(size: 20)).padding(.all)
                TextField("Enter Name",text:$Name).padding(.leading, 145.0).font(.system(size: 20))
            }
            VStack{
                Text("Exercise Time: \(Exercise.TimeOfExercise)"
                ).font(.system(size: 20)).padding(.all)
                Picker(selection: $ExerciseTimePicker, label: Text("Picker"), content: {
                    SwiftUI.ForEach(0..<availableSec.count){ i in
                        Text("\(availableSec[i]) sec")
                    }
                })
                .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/180.0/*@END_MENU_TOKEN@*/)

            }
            VStack{
                Text("Break Time: \(Exercise.TimeOfBreak)").font(.system(size: 20)).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Picker(selection: $BreakTimePicker, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                    SwiftUI.ForEach(0..<availableSec.count){ i in
                        Text("\(availableSec[i]) sec")
                    }
                })
                .frame(width: 200.0, height: 180.0)
            }
            Spacer()
            Button(action: {
                Exercise =
                    WorkOutTimer.Exercise(Name, Int(availableSec[ExerciseTimePicker]) , Int(availableSec[BreakTimePicker]) )
            },label:{
                Image(systemName: "checkmark.circle").resizable(resizingMode: .tile)
                .aspectRatio(contentMode: .fit).frame(width: 80, height: 80)}).foregroundColor(.red)

            Spacer()
        }
    }
}
