//
//  ContentView.swift
//  FormDemo
//
//  Created by Simon Ng on 17/6/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        NavigationView {
            List {
                
                Image("chicken")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                VStack(alignment: .leading) {
                    LabelTextField(label: "NAME", placeHolder: "Fill in the restaurant name")
                    LabelTextField(label: "TYPE", placeHolder: "Fill in the restaurant type")
                    LabelTextField(label: "ADDRESS", placeHolder: "Fill in the restaurant address")
                    LabelTextField(label: "PHONE", placeHolder: "Fill in the restaurant phone")
                    LabelTextField(label: "DESCRIPTION", placeHolder: "Fill in the restaurant description")
                    
                    RoundedButton().padding(.top, 20)
                }
                .padding(.top, 20)
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("New Restaurant"))
            .navigationBarItems(trailing:
                    Button(action: {
                        
                    }, label: {
                        Text("Cancel")
                    })
            )
        }
        
    }
}

struct LabelTextField : View {
    var label: String
    var placeHolder: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
            TextField(.constant(""), placeholder: Text(placeHolder))
                .padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0), cornerRadius: 5.0)
            }
            .padding(.horizontal, 15)
    }
}

struct RoundedButton : View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("Save")
                    .font(.headline)
                    .color(Color.white)
                Spacer()
            }
        }
        .padding(.vertical, 10.0)
        .background(Color.red, cornerRadius: 4.0)
        .padding(.horizontal, 50)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewDevice("iPhone Xs")
                .environment(\.colorScheme, .dark)
            
            ContentView().previewLayout(.fixed(width: 375, height: 1000))
                .environment(\.colorScheme, .light)
        }
    }
}
#endif
