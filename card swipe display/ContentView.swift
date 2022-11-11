//
//  ContentView.swift
//  card swipe display
//
//  Created by Kasey Pasqualini on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            
            TabView {
                
                ForEach(1...50, id: \.self) { index in
                        
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1)))
                       
                            Image(systemName: "circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipped().padding()
                            Text(String(index)).font(.system(size: 150))
                            .fontWeight(.bold)
                            .padding(5)
                        
                        
                    }.frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center).cornerRadius(15)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue:0, opacity: 0.5), radius: 10, x: -5, y:5)
                        

                    }
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
