//
//  ContentView.swift
//  Weather
//
//  Created by macbook on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var Night = false
    
    
    var body: some View {
       // bg
        ZStack{
            Color(.blue)
            // night false by defualt , when ou press the button change to true , cahnge the bg colors and main icon
            // i : true ? false
            Backgroundview(topColor: Night ? .black : .blue,
                           midColor: Night ? .blue : .cyan,
                           bottomColor: Night ? .black : .white)
           // adding the city name , icon and temp
            // vstack spacing , to decrease the space (icon and temp)
            VStack(spacing : 10){
                Text("Kuwait, KW")
                // adjust the style (city name)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                // toggle , tap = night , tap = light
                WeatherView(iconName: Night ? "cloud.moon" :"cloud.sun.fill", temp: 48)
                // scroll view << week days >>
                ScrollView(.horizontal){
                    // horizontal
                HStack(spacing : 20){
                    // weather day view << struct >>
                    WeatherDayView(dayofWeek: "SUN", iconDay: "cloud.sun.fill", temp: 41)
                    WeatherDayView(dayofWeek: "MON", iconDay: "sun.and.horizon.fill", temp: 44)
                    WeatherDayView(dayofWeek: "TUE", iconDay: "sun.max.fill", temp: 46)
                    WeatherDayView(dayofWeek: "WEN", iconDay: "sun.dust.fill", temp: 40)
                    WeatherDayView(dayofWeek: "THU", iconDay: "sun.dust.fill", temp: 39)
                    WeatherDayView(dayofWeek: "FRI", iconDay: "sun.haze.fill", temp: 42)
                    WeatherDayView(dayofWeek: "SAT", iconDay: "sun.max.fill", temp: 46)
                }
            }
                Spacer()
                
                Button{
                    // change the to night view and reverse
                    Night.toggle()
                    
                }label: {
                    Text("change day time ")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// scroller <<week days>>
struct WeatherDayView: View {
    // var > change the day    ,  var >  cahnge day icon , var >  cahnge the temp << all in subview
    var dayofWeek : String
    var iconDay : String
    var temp : Int
    var body: some View {
        VStack{
            Text(dayofWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: iconDay)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(" \(temp)° ")
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct Backgroundview: View {
    // change the bg colors
    var topColor : Color
    var midColor : Color
    var bottomColor : Color
    
    var body: some View {
        // bg colors , night and light
        LinearGradient(gradient: Gradient(colors: [topColor , midColor ,bottomColor]) , startPoint: .topLeading, endPoint: .bottomTrailing)
        // fill the screen
            .edgesIgnoringSafeArea(.all)
    }
}
struct WeatherView : View{
    var iconName : String
    var temp : Int
    var body: some View {
        VStack{
            //  SF
            Image(systemName: iconName)
            // full size
                .renderingMode(.original)
                .resizable()
            // fit the full icon size in the frame
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            //option + shift = 8 to add the degree icon
            Text(" \(temp)° ")
            //style the font
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom , 40 )
    }
}
