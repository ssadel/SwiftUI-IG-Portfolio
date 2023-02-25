//
//  ContentView.swift
//  sid portfolio
//
//  Created by Sidney Sadel on 2/24/23.
//


// MARK: made this in like 10 min lol enjoy

import SwiftUI

struct ContentView: View {
    
    let columns:[GridItem] = [GridItem.init(.flexible()), GridItem.init(.flexible()), GridItem.init(.flexible())]
    let width:Double = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            header
            ScrollView {
                topBlock
                descBlock
                actionBlock
            }
        }
        .accentColor(.white)
    }
    var header: some View {
        HStack(spacing: 20) {
            Image(systemName: "chevron.left")
                .imageScale(.large)
                .font(.headline)
            Spacer()
            Image(systemName: "bell")
            Image(systemName: "ellipsis")
        }
        .font(.headline)
        .overlay(
            HStack {
                Text("sidsadel")
                    .font(.headline)
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                    .imageScale(.small)
            }
        )
        .padding()
    }
    var topBlock: some View {
        HStack {
            Image("prof")
                .resizable()
                .scaledToFill()
                .frame(width: width/5, height: width/5)
                .clipShape(Circle())
                .padding(5)
                .background(
                    Circle()
                        .stroke(lineWidth: 3)
                        .fill(LinearGradient(colors: [.yellow, .red, .purple], startPoint: .bottomLeading, endPoint: .topTrailing))
                )
            Spacer()
            LazyVGrid(columns: self.columns) {
                Text("1")
                Text("5M")
                Text("25")
                Text("Posts")
                    .font(.subheadline)
                Text("Followers")
                    .font(.subheadline)
                Text("Following")
                    .font(.subheadline)
            }
            .font(.headline)
            .frame(width: width/1.7)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 5)
    }
    var descBlock: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("Sidney (Sid) Sadel")
                    .padding(.top, 5)
                    .font(.headline)
                Text("iOS Engineer & Entrepreneur")
                    .font(.headline.weight(.regular))
                    .foregroundColor(Color("LightBlue"))
                Text("✉️ sidneysadel@gmail.com")
                Text("📞 +1 (215) 805 - 4512")
                HStack {
                    Image(systemName: "link")
                    Text("https://www.linkedin.com/in/sidneysadel/")
                        .accentColor(Color("LightBlue"))
                }
                .foregroundColor(Color("LightBlue"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.headline.weight(.regular))
            .padding(.leading)
        }
    }
    var actionBlock: some View {
        HStack {
            Text("Hire")
                .font(.headline)
                .frame(width: width/2.5, height: 34)
                .background(.blue)
                .cornerRadius(10)
            Text("Message")
                .font(.headline)
                .frame(width: width/2.5, height: 34)
                .background(.gray.opacity(0.25))
                .cornerRadius(10)
            Spacer()
            Image(systemName: "person.badge.plus")
                .font(.caption)
                .frame(maxWidth: .infinity)
                .frame(height: 34)
                .background(.gray.opacity(0.25))
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
