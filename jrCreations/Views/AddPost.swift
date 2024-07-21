//
//  AddPost.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/21/24.
//

import SwiftUI

struct AddPost: View {
    
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Begin your text here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color(white:0.9))
                    .cornerRadius(20)
                
                Button(action: {
                    
                }, label: {
                    Text("Post to bulletin".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(20)
                })
            }
            .padding()
        }
        .navigationTitle("Write a Post ✍️")
    }
}

#Preview {
    NavigationView {
        AddPost()
    }
}
