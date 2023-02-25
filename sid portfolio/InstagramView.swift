//
//  ContentView.swift
//  sid portfolio
//
//  Created by Sidney Sadel on 2/24/23.
//


// MARK: made this in like 20 min lol enjoy

import SwiftUI

struct InstagramView: View {
    
    let columns:[GridItem] = [GridItem.init(.flexible(), spacing: 4, alignment: .top), GridItem.init(.flexible(), spacing: 4, alignment: .top), GridItem.init(.flexible(), spacing: 4, alignment: .top)]
    let width:Double = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            header
            ScrollView(showsIndicators: false) {
                topBlock
                descBlock
                actionBlock
                feedSegment
                posts
                Text("https://github.com/ssadel/SwiftUI-IG-Portfolio")
                    .font(.caption2)
                    .padding(.top, 10)
                    .accentColor(.gray)
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
        .padding(.horizontal)
        .padding(.vertical, 10)
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
                Text("6")
                Text("8")
                Text("2")
                Text("Years")
                    .font(.subheadline)
                Text("Languages")
                    .font(.subheadline)
                Text("References")
                    .font(.subheadline)
            }
            .font(.headline)
            .frame(width: width/1.6)
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
                Text("Self-Taught iOS Engineer & Entrepreneur")
                    .font(.headline.weight(.regular))
                    .foregroundColor(Color("LightBlue"))
                Text("☎️ +1 (215) 805 - 4512")
                Text("📧 sidneysadel@gmail.com")
                HStack {
                    Image(systemName: "link")
                    Text("https://dot.cards/sadel")
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
            Text("Contact")
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
    var feedSegment: some View {
        LazyVGrid(columns: columns) {
            Image(systemName: "square.grid.3x3")
                .foregroundColor(.gray)
            
            Image(systemName: "play.rectangle.on.rectangle.fill")
                .foregroundColor(.gray)
            
            Image(systemName: "tag.fill")
            
            Text("")
            Text("")
            RoundedRectangle(cornerRadius: 2)
                .frame(height: 2)
        }
        .padding(.top, 4)
        .padding(.bottom, -8)
    }
    var posts: some View {
        LazyVGrid(columns: columns) {
            Image("yikyak")
                .resizable()
                .scaledToFit()
                .overlay(
                    Text("Yik Yak")
                        .font(.subheadline.weight(.bold))
                        .shadow(radius: 4)
                        .padding(.leading, 12)
                    , alignment: .bottomLeading
                )
            Image("vanguard")
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .overlay(
                    Text("Vanguard")
                        .foregroundColor(.black)
                        .font(.subheadline.weight(.bold))
                    , alignment: .bottom
                )
            Image("bebigger")
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .overlay(
                    Text("BeBigger")
                        .foregroundColor(.black)
                        .font(.subheadline.weight(.bold))
                        .padding(.trailing, 12)
                    , alignment: .bottomTrailing
                )
            Text("**Lead iOS Engineer**\n- 1 of 2 iOS engineers developing and releasing all updates to an app with 700K+ DAU\n- Worked closely with backend and product teams to plan scalable functionality\n- Developed entire features, such as notifications tab, (new) explore herds tab, and more")
            Text("**NodeJS Developer**\n- Worked closely with product, QA, and client side teams to plan and produce scalable code\n- Contributed to BFF application codebase and created/maintained unit/e2e tests for all endpoints")
            Text("**Founder, iOS Engineer**\n- A project I developed on the side in ~3 weeks to prove a concept, BeBigger is “BeReal for gym rats”\n- 700+ downloads in less than a month, 100+ DAU currently")
        }
        .font(.caption)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramView()
            .preferredColorScheme(.dark)
    }
}
