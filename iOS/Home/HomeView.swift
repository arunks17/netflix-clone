//
//  HomeView.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 21/09/22.
//

import SwiftUI

struct HomeView: View {
    
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                    
                    TopRowButtons()
                    
                    
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category), id: \.self) {
                                        movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                            .onTapGesture {
                                                movieDetailToShow = movie
                                            }
                                    }
                                }
                            })
                        }
                    }
                }
            }
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV SHows")
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {Text("Movies")
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {Text("My Lists")
            })
                .buttonStyle(PlainButtonStyle())
            
            
        }
//        .background(Color.black)
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
