//
//  ContentView.swift
//  HueForecast-iOS
//
//  Created by Mike on 14/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature: Double = 0
    var body: some View {
        ZStack {
            backgroundForTemperature(temperature)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(emojiForTemperature(temperature))
                    .font(.system(size: 50))
                Slider(value: $temperature, in: -50...50, step: 1)
                    .padding()
                Text("\(temperature, specifier: "%.0f")°C")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }

    private func backgroundForTemperature(_ temperature: Double) -> LinearGradient {
        switch temperature {
        case ..<0:
            return LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
        case 0..<11:
            return LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .top, endPoint: .bottom)
        case 11..<16:
            return LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .top, endPoint: .bottom)
        case 16..<26:
            return LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .top, endPoint: .bottom)
        case 26..<31:
            return LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom)
        case 31..<41:
            return LinearGradient(gradient: Gradient(colors: [.red, .purple]), startPoint: .top, endPoint: .bottom)
        case 41...:
            return LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .top, endPoint: .bottom)
        default:
            return LinearGradient(gradient: Gradient(colors: [.gray]), startPoint: .top, endPoint: .bottom)
        }
    }

    private func emojiForTemperature(_
                                     temperature: Double) -> String {
                                     switch temperature {
                                     case ..<0:
                                     return "🥶"
                                     case 0..<11:
                                     return "🧤"
                                     case 11..<16:
                                     return "🧥"
                                     case 16..<26:
                                     return "👕"
                                     case 26..<31:
                                     return "😎"
                                     case 31..<41:
                                     return "🥵"
                                     case 41..<50:
                                     return "🔥"
                                     case 50...:
                                     return "💀"
                                     default:
                                     return "❓"
                                     }
                                     }
                                     }
