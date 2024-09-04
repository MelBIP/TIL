//
//  ContentView.swift
//  SwiftUI ClockApp
//
//  Created by 김주은 on 2023/10/02.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            World_Clock()
                .tabItem {
                    Image(systemName: "globe")
                    Text("세계 시계")
                }
            
            Alarm()
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("알림")
                }
            
            StopWatch()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("스톱워치")
                }
        }
        .accentColor(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
