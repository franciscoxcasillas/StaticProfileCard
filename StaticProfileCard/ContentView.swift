//
//  ContentView.swift
//  StaticProfileCard
//
//  Created by Francisco Jean on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ProfileCardView(name: "Francisco", role: "Software Engineer")
            ProfileCardView(name: "Mariana", role: "Marketing")
        }
        .padding()
    }
}

struct ProfileCardView: View{
    var name: String
    var role: String
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(name)
                .font(.headline)
            Text(role)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(width: 170)
        .cornerRadius(10)
        .background(Color.white)
        .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}
