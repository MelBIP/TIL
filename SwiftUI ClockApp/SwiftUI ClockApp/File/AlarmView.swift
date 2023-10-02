//
//  Alarm.swift
//  SwiftUI ClockApp
//
//  Created by 김주은 on 2023/10/02.
//

import SwiftUI

struct AlarmMakeButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 230, height: 45)
            .font(.system(size: 14))
            .foregroundColor(Color(0x191919 as! CGColor))
            .background(Color(0x000000 as! CGColor))
            .cornerRadius(6.0)
    }
}

struct Alarm: View {
    
    @State private var alarmOnOff = false
    
    var body: some View {
        
        TabView() {
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
                    
                    Text("알람")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 1, bottom: 0, trailing: 0))
                    
                        .padding(EdgeInsets(top: 8, leading: 9, bottom: 10, trailing: 0))
                    HStack {
                        Image(systemName: "bed.double.fill")
                        Text("수면 | 기상")
                            .fontWeight(.bold)
                    } .foregroundColor(.white)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    
                        .padding(8)
                    
                    HStack{
                        Text("알람 없음")
                            .foregroundColor(.gray)
                            .frame(width: 65)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 245))
                        
                        
                    } .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))
                    
                    Text("기타")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 20, leading: 12, bottom: 0, trailing: 0))
                    
                    ZStack{
                        VStack (alignment: .leading) {
                            HStack {
                                Text("오전")
                                    .font(.system(size: 45))
                                Text("6:30")
                                    .font(.system(size: 70))
                            } .fontWeight(.thin)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                            Text("알람, 매일")
                                .font(.system(size: 16))
                                .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))
                        } .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Toggle(" ", isOn: $alarmOnOff)
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Alarm_Previews: PreviewProvider {
    static var previews: some View {
        Alarm()
    }
}
