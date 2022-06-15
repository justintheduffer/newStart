//
//  WeatherView.swift
//  newStart
//
//  Created by Code Academy on 6/14/22.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(weather.name)
                        .bold().font(.title)
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))").fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack{
                    HStack{
                        VStack(spacing: 20){
                            Image(systemName: "sun.max")
                                .font(.system(size: 45))
                            
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                        Text(weather.main.feels_like.roundDouble() + "°")
                            .font(.system(size: 90))
                    }
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url: URL(string: "https://png.pngitem.com/pimgs/s/101-1014108_cartoon-city-cityscape-buildings-architecture-commercial-building-hd.png")){ image in
                        image
                        //placeholder image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                    }placeholder: {
                        ProgressView()
                    }
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            //extra
            VStack{
                Spacer()
                
                VStack(alignment: .leading, spacing: 20){
                    
                }
                //.frame(maxWidth: .infinity, alignment: .leading)
                //.padding()
                //.padding(.bottom,20)
                //.foregroundColor(.blue)
                //.background(.white)
                //.cornerRadius(20, corners: [.topLeft, .topRight])
            }
            //end
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(.blue)
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
