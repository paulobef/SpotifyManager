//
//  MainMenu.swift
//  SpotifyManager
//
//  Created by Paul Beffa on 14/09/2021.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        List {
            
            NavigationLink(
                "Playlists", destination: PlaylistsListView()
            )
            /*
            NavigationLink(
                "Saved Albums", destination: SavedAlbumsGridView()
            )
            NavigationLink(
                "Search For Tracks", destination: SearchForTracksView()
            )
            NavigationLink(
                "Recently Played Tracks", destination: RecentlyPlayedView()
            )
            NavigationLink(
                "Debug Menu", destination: DebugMenuView()
            )
            */
            
            // This is the location where you can add your own views to test out
            // your application. Each view receives an instance of `Spotify`
            // from the environment.
            
        }
        .listStyle(SidebarListStyle())
        
    }
}

struct MainMenuView_Previews: PreviewProvider {
    
    static let spotify: Spotify = {
        let spotify = Spotify()
        spotify.isAuthorized = true
        return spotify
    }()
    
    static var previews: some View {
        NavigationView {
            MainMenuView()
                .environmentObject(spotify)
        }
    }
}
