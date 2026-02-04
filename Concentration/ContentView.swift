//
//  ContentView.swift
//  Concentration
//
//  Created by Oscar De Villiers on 2026/01/30.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var numberOfGuesses = 0
    @State private var audioPlayer: AVAudioPlayer!
    @State private var gameMessage = ""
    private static var button1 = "⚪️"
    private static var button2 = "⚪️"
    private static var button3 = "⚪️"
    private static var button4 = "⚪️"
    private static var button5 = "⚪️"
    private static var button6 = "⚪️"
    private static var button7 = "⚪️"
    private static var button8 = "⚪️"
    private static var button9 = "⚪️"
    private static var button10 = "⚪️"
    private static var button11 = "⚪️"
    private static var button12 = "⚪️"
    private static var button13 = "⚪️"
    private static var button14 = "⚪️"
    private static var button15 = "⚪️"
    private static var button16 = "⚪️"
    private static let resetButtonList = [button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16]
    @State private var defaultButtonList = [button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16]
    @State private var buttonList = [button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16]
    @State private var iconList = ["🦄", "🌶️","🦋", "🍕", "🐢", "🦅", "🌮", "🚀", "🦄", "🌶️", "🦋", "🍕", "🐢", "🦅", "🌮", "🚀"].shuffled()
    @State private var buttonSelectedList: [String] = []
    @State private var checkList: [String] = []
    @State private var buttonBackground: Color = .clear
    @State private var tintColor: Color = .white
    @State private var disableUponMatch: Bool = false
    @State private var enableButton = false
    @State private var resetMessage = "Another Try?"
    
    var body: some View {
        Text("Total Guesses: \(numberOfGuesses)")
            .font(.largeTitle)
            .fontWeight(.black)
        
        Spacer()
        
        VStack(spacing: 40) {
            
            HStack(spacing: 40) {
                
                Button(buttonList[0]) {
                    buttonList[0] = iconList[0]
                    checkList.append(buttonList[0])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                    
                }
                .disabled(enableButton)
                
                Button(buttonList[1]) {
                    buttonList[1] = iconList[1]
                    checkList.append(buttonList[1])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[2]) {
                    buttonList[2] = iconList[2]
                    checkList.append(buttonList[2])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[3]) {
                    buttonList[3] = iconList[3]
                    checkList.append(buttonList[3])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
            }
            
            HStack(spacing: 40) {
                Button(buttonList[4]) {
                    buttonList[4] = iconList[4]
                    checkList.append(buttonList[4])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                    
                }
                .disabled(enableButton)
                
                Button(buttonList[5]) {
                    buttonList[5] = iconList[5]
                    checkList.append(buttonList[5])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[6]) {
                    buttonList[6] = iconList[6]
                    checkList.append(buttonList[6])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[7]) {
                    buttonList[7] = iconList[7]
                    checkList.append(buttonList[7])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
            }
            
            HStack(spacing: 40) {
                Button(buttonList[8]) {
                    buttonList[8] = iconList[8]
                    checkList.append(buttonList[8])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                    
                }
                .disabled(enableButton)
                
                
                Button(buttonList[9]) {
                    buttonList[9] = iconList[9]
                    checkList.append(buttonList[9])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[10]) {
                    buttonList[10] = iconList[10]
                    checkList.append(buttonList[10])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[11]) {
                    buttonList[11] = iconList[11]
                    checkList.append(buttonList[11])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
            }
            
            HStack(spacing: 40) {
                Button(buttonList[12]) {
                    buttonList[12] = iconList[12]
                    checkList.append(buttonList[12])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                    
                }
                .disabled(enableButton)
                
                Button(buttonList[13]) {
                    buttonList[13] = iconList[13]
                    checkList.append(buttonList[13])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[14]) {
                    buttonList[14] = iconList[14]
                    checkList.append(buttonList[14])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
                
                Button(buttonList[15]) {
                    buttonList[15] = iconList[15]
                    checkList.append(buttonList[15])
                    if checkList.count >= 2 {
                        gameLogic()
                    }
                }
                .overlay {
                    Circle()
                        .stroke(buttonBackground, lineWidth: 40)
                }
                .disabled(enableButton)
            }
            
            Text(gameMessage)
                .font(.title2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
        .padding()
        
        Spacer()
        
        Spacer()
        
        Button(resetMessage) {
            gameMessage = ""
            tintColor = .white
            buttonList = defaultButtonList
            enableButton = false
        }
        .buttonStyle(.borderedProminent)
        .tint(tintColor)
        
        Spacer()
    }
    
    func playSound(soundName: String) {
        
        if audioPlayer != nil && audioPlayer.isPlaying {
            audioPlayer.stop()
        }
        
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡 Error: \(error.localizedDescription) creating audioPlayer")
        }
    }
    
    func gameLogic() {
        
        print("buttonList \(buttonList)")
        print("defaultButtonList \(defaultButtonList)")
        
        if buttonList.contains("⚪️") {
            if checkList[checkList.count-2] == checkList[checkList.count-1] {
                defaultButtonList = buttonList
                gameMessage = "✅You Found a Match"
                numberOfGuesses += 1
                playSound(soundName: "correct")
                buttonBackground = .gray.opacity(0.1)
                tintColor = .green
                checkList = []
                enableButton = true
            } else {
                numberOfGuesses += 1
                gameMessage = "❌Not a Match Try Again"
                playSound(soundName: "wrong")
                buttonBackground = .gray.opacity(0.1)
                tintColor = .red
                checkList = []
                enableButton = true
            }
        } else {
            playSound(soundName: "ta-da")
            gameMessage = "You Guessed Them All!"
            resetMessage = "Play Again?"
            tintColor = .yellow
            numberOfGuesses = 0
            resetMessage = "Play Again?"
            defaultButtonList = Self.resetButtonList
            buttonList = defaultButtonList
            checkList = []
            iconList = ["🦄", "🌶️","🦋", "🍕", "🐢", "🦅", "🌮", "🚀", "🦄", "🌶️", "🦋", "🍕", "🐢", "🦅", "🌮", "🚀"].shuffled()
        }
    }
    
}
        



#Preview {
    ContentView()
}
