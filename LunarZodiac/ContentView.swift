//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Bob Witmer on 2023-07-03.
//

import SwiftUI

struct ContentView: View {
    
    @State public var currentYear = 2023
    @State public var imageNumber = 3
    
    var body: some View {
        
        VStack {

            Text(String(currentYear))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
            
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFill()
                .padding()


            HStack {
                Button {
                    currentYear -= 1
                    
                   if imageNumber > 0
                    {
                       imageNumber -= 1
                   } else {
                       imageNumber = 11
                   }
                } label: {
                Image(systemName: "chevron.left")
            }
                
                Spacer()
                
                Button {
                    currentYear += 1
                    
                    if imageNumber < 11
                     {
                        imageNumber += 1
                    } else {
                        imageNumber = 0
                    }
                } label: {
                    Image(systemName: "chevron.right")
                }
               
            }
            .font(.largeTitle)
            .fontWeight(.black)
            
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
