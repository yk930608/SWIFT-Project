//
//  SwiftUIView.swift
//  WorkOutTimer
//
//  Created by Kai Ye on 6/28/21.
//

import SwiftUI
import Foundation
struct Setting_Page: View {
    @Binding var Exercises:[Exercise]
    init(_ Exercises:Binding<[Exercise]>){
        self._Exercises = Exercises
    }
    var body: some View {
        VStack{
            HStack{
                Text("Exercise Name: ").font(.system(size:25)).padding(.all)
                Spacer()
                Text("Exercise Time:").font(.system(size:25)).padding(.all)
                Text("Break Time").font(.system(size:25)).padding(.all)
            }
            VStack{
                HStack{
                    Text(Exercises[0].NameOfExercise).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[0].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[0].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[0]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                HStack{
                    Text(Exercises[1].NameOfExercise).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[1].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[1].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[1]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                HStack{
                    Text(Exercises [2].NameOfExercise).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises  [2].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[2].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[2]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                HStack{
                Text(Exercises[3].NameOfExercise).font(.system(size:20)).padding(.all)
                Spacer()
                Text(String(Exercises[3].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                Spacer()
                Text(String(Exercises[3].BreakTimerTime)).font(.system(size:20)).padding(.all)
                NavigationLink(
                    destination: Exercise_Creating($Exercises[3]),
                    label: {
                        Image(systemName: "gearshape")
                            .renderingMode(.original)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing)
                            .frame(width: 40, height: 40)
                        }
                    )
            }
                HStack{
                    Text(Exercises[4].NameOfExercise).font(.system(size:20)).padding(.all)
                
                    Spacer()
                    Text(String(Exercises[4].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[4].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[4]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                HStack{
                    Text(Exercises[5].NameOfExercise).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[5].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[5].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[5]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                HStack{
                    Text(Exercises[6].NameOfExercise).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[6].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[6].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[6]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                HStack{
                    Text(Exercises[7].NameOfExercise).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises[7].ExerciseTimerTime)).font(.system(size:20)).padding(.all)
                    Spacer()
                    Text(String(Exercises  [7].BreakTimerTime)).font(.system(size:20)).padding(.all)
                    NavigationLink(
                        destination: Exercise_Creating($Exercises[7]),
                        label: {
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing)
                                .frame(width: 40, height: 40)
                            }
                        )
                }
                Spacer()
            }
        }
    }
}
