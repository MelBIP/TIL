//
//  ContentView.swift
//  SwiftUI Super Power Scroll View
//
//  Created by 김주은 on 2023/10/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            VStack {
                ForEach(0..<20) { _ in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<10)  { _ in
                                let randomColor = Color(red: Double.random(in: 0..<1),
                                                         green: Double.random(in: 0..<1),
                                                         blue: Double.random(in: 0..<1))
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(randomColor)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                    .overlay(
                                        Text("아무 글이나 추가")
                                            .foregroundColor(.black)
                                            .font(.headline)
                                    )
                            }
                        }
                    })
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
