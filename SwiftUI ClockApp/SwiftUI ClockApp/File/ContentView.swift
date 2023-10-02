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
            Alarm()
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("알림")
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
