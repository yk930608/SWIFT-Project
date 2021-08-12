//
//  TimerManager.swift
//  WorkOutTimer
//
//  Created by Kai Ye on 6/21/21.
//

import Foundation
import SwiftUI

class Exercise: ObservableObject{

    @Published var TimerMode: timerMode = .initial
    @Published var NameOfExercise:String
    var TimeOfExercise:Int
    @Published var ExerciseTimerTime:Int
    var needsBreak:Bool
    var TimeOfBreak:Int
    @Published var BreakTimerTime:Int
    var ExerciseTimer = Timer()
    var BreakTimer = Timer()
    var NextExercise:Exercise?
    required init(_ NameOfExcercise:String, _ TimeOfExcercise:Int, _ TimeOfBreak: Int ) {
        self.NameOfExercise = NameOfExcercise
        self.TimeOfExercise = TimeOfExcercise
        self.ExerciseTimerTime = TimeOfExcercise
        if(TimeOfBreak == 0){
            self.needsBreak = false
        }
        self.needsBreak = true
        self.TimeOfBreak = TimeOfBreak
        self.BreakTimerTime = TimeOfBreak
        self.NextExercise = nil
    }
    func SetTo(_ Exercise:Exercise) -> Void {
        self.NameOfExercise = Exercise.NameOfExercise
        self.TimeOfExercise = Exercise.TimeOfExercise
        self.ExerciseTimerTime = Exercise.ExerciseTimerTime
        if(Exercise.TimeOfBreak == 0){
            self.needsBreak = false
        }
        self.needsBreak = true
        self.TimeOfBreak = Exercise.TimeOfBreak
        self.BreakTimerTime = Exercise.TimeOfBreak
        self.NextExercise = Exercise.NextExercise
    }
    func linkNextExercise(_ NextExercise:Exercise){
        self.NextExercise = NextExercise
    }
    func Start() -> Void {
        if(self.TimeOfExercise == 0){
            if(self.TimeOfBreak == 0){
                if(self.NextExercise != nil){
                    self.NextExercise?.Start()
                }
            }
            else{
                self.BreakStart()
            }
        }
        self.TimerMode = .running
        ExerciseTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: {
            ExcerciseTimer in if self.ExerciseTimerTime == 0{
                self.ExerciseTimer.invalidate()
                self.ExerciseTimerTime = self.TimeOfExercise
                if(self.needsBreak == true){
                    self.BreakStart()
                }
                else{
                    if(self.NextExercise != nil){
                        self.TimerMode = .finsihed
                        self.NextExercise!.Start()
                    }
                    else{
                        self.TimerMode = .finsihed
                    }
                }
            }
        self.ExerciseTimerTime -= 1;
        })
        self.ExerciseTimerTime = self.TimeOfExercise
    }
    func BreakStart()->Void{
        self.TimerMode = .running
        self.BreakTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: {
            BreakTimer in if self.BreakTimerTime == 0{
                self.TimerMode = .finsihed
                self.BreakTimer.invalidate()
                self.BreakTimerTime = self.TimeOfBreak
                if(self.NextExercise != nil){
                self.NextExercise!.Start()
                }
            }
        self.BreakTimerTime -= 1;
        })
    }
}
