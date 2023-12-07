//
//  ChatListView.swift
//  Assignment-25
//
//  Created by Eka Kelenjeridze on 07.12.23.
//

import SwiftUI

struct ChatListView: View {
    @State var chatList = ChatList.dummyData
    @State var clearChatMessage = "The chat has been cleaned up"
    @State var showClearMessage = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(chatList) { user in
                        HStack {
                            Image(user.avatar)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                            
                            Spacer()
                                .frame(width: 10)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(user.name)
                                    .font(.headline)
                                    .bold()
                                
                                Text(user.message)
                                    .font(.subheadline)
                                    .fontWeight(.light)
                                    .foregroundColor(Color(red: 0.61, green: 0.61, blue: 0.61))
                            }
                            
                            Spacer()
                            
                            Text(user.date)
                                .font(.subheadline)
                                .fontWeight(.light)
                                .foregroundColor(Color(red: 0.72, green: 0.72, blue: 0.72))
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal, 16)
                    }
                }
                
                if showClearMessage {
                    Text(clearChatMessage)
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .frame(width: .infinity, height: .infinity, alignment: .center)
                    
                    Spacer()
                        .frame(width: 100)
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        self.chatList.removeAll()
                        showClearMessage = true
                        
                        
                    }, label: {
                        Text("Clear Chat")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 120)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 12)
                            .background(
                                Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1.0)
                                    .cornerRadius(6)
                            )
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.chatList = ChatList.dummyData
                        showClearMessage = false
                    }, label: {
                        Text("Reset")
                            .font(.title2)                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 120)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 12)
                            .background(
                                Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1.0)
                                    .cornerRadius(6)
                            )
                    })
                    
                    Spacer()
                    
                }
            }
            .preferredColorScheme(.dark)
            .background(Color(red: 0.20, green: 0.20, blue: 0.20))
            .background(Color.white)
            .navigationBarTitle("Chat", displayMode: .inline)
        }
    }
}

#Preview {
    ChatListView()
}
