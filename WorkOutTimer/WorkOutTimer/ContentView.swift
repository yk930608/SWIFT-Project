//
//  ContentView.swift
//  WorkOutTimer
//
//  Created by Kai Ye on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var ExerciseHead:Exercise = Exercise("Example", 10, 2)
    @State private var Exercises:[Exercise] = [Exercise("Example", 10, 2)
,Exercise("Example", 0, 0),Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
,Exercise("Example", 0, 0)
]
    var body: some View {
        NavigationView{
        VStack {
            Text(ExerciseHead.NameOfExercise).font(.system(size:60)).padding([.top, .leading, .trailing])
            Spacer()
            Text("\(ExerciseHead.ExerciseTimerTime)").font(.system(size:80))
            Spacer()
            Text(ExerciseHead.NextExercise?.NameOfExercise ?? "No More Exercise" ).font(.system(size:40))
            Spacer()
            Button(action: {
                for i in 0...Exercises.count-2{
                    if(Exercises[i+1].TimeOfExercise == 0 && Exercises[i+1].TimeOfBreak == 0){
                        break
                    }
                    Exercises[i].linkNextExercise(Exercises[i+1])
                }
                if(Exercises[0].TimeOfExercise != 0 || Exercises[0].TimeOfBreak != 0){
                    ExerciseHead.SetTo(Exercises[0])
                    ExerciseHead.Start()
                }
            }, label: {
            Image(systemName:self.ExerciseHead.TimerMode == .running ? "pause.circle.fill":"play.circle.fill").resizable()
                .aspectRatio(contentMode: .fit).frame(width: 180, height: 180).foregroundColor(.yellow)})
            Spacer()
            NavigationLink(
                destination: Setting_Page($Exercises),
                label: {
                    Image(systemName: "gearshape")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).frame(width: 80, height: 80)
                    }
                )
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

