//
//  WorldWatchView.swift
//  SwiftUI ClockApp
//
//  Created by 김주은 on 2023/10/03.
//

import SwiftUI

struct World_ClockMakeButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 230, height: 45)
            .font(.system(size: 14))
            .foregroundColor(Color(0x191919 as! CGColor))
            .background(Color(0x000000 as! CGColor))
            .cornerRadius(6.0)
    }
}

struct World_Clock: View {
    
    var body: some View {
        TabView {
            ZStack {
                Color(red: 0/255, green: 0/255, blue: 0/255).edgesIgnoringSafeArea(.all)
                VStack {
                    HStack (spacing: 310) {
                        Text("편집")
                        Image(systemName: "plus")
                    }
                    .foregroundColor(.orange)
                    .font(.system(size: 20))
                    
                    .padding(8)
                    
                    Text("세계 시계")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 1, bottom: 0, trailing: 0))
                    
                        .padding(EdgeInsets(top: 8, leading: 10, bottom: 0, trailing: 0))
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("오늘, +0시간")
                                .foregroundColor(.gray)
                            Text("서울")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                            
                        }
                        .padding(EdgeInsets(top: 1, leading: 1, bottom: 0, trailing: 34))
                        
                        HStack {
                            Text("오후")
                                .font(.system(size: 45))
                                .fontWeight(.light)
                            Text("10:48")
                                .font(.system(size: 70))
                                .fontWeight(.thin)
                        }
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct World_Clock_Previews: PreviewProvider {
    static var previews: some View {
        World_Clock()
    }
}
