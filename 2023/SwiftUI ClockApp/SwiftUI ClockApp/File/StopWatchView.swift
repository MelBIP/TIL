//
//  StopWatchView.swift
//  SwiftUI ClockApp
//
//  Created by 김주은 on 2023/10/03.
//

import SwiftUI

struct StopWatchMakeButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 230, height: 45)
            .font(.system(size: 14))
            .foregroundColor(Color(0x191919 as! CGColor))
            .background(Color(0x000000 as! CGColor))
            .cornerRadius(6.0)
    }
}

struct StopWatch: View {
    var body: some View {
        
        TabView {
            ZStack {
                Color(red: 0/255, green: 0/255, blue: 0/255).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("00:00.00")
                        .foregroundColor(.white)
                        .font(.system(size: 95))
                        .fontWeight(.thin)
                    HStack {
                        ZStack {
                            Button (action: {
                                print("랩")
                            }) {
                                Circle()
                                    .stroke(lineWidth: 2)
                                    .frame(width: 85, height: 85)
                            }
                            Button (action: {
                                print("랩")
                            }) {
                                Circle()
                                    .frame(width: 80, height: 80)
                            }
                        } .tint(.gray)
                            .opacity(0.3)
                            .overlay(Text("랩"))
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 8))
                            Image(systemName: "circle.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 8))
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Button (action: {
                                print("시작")
                            }) {
                                Circle()
                                    .stroke(lineWidth: 2)
                                    .frame(width: 85, height: 85)
                            }
                            Button (action: {
                                print("시작")
                            }) {
                                Circle()
                                    .frame(width: 80, height: 80)
                            }
                        } .tint(.green)
                            .opacity(0.3)
                            .overlay(Text("시작"))
                            .foregroundColor(.green)
                            .font(.system(size: 20))
                    }
                }
            }
        }
    }
}

struct StopWatch_Previews: PreviewProvider {
    static var previews: some View {
        StopWatch()
    }
}
