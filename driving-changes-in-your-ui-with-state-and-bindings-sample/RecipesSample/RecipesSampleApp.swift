/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

@main
struct RecipesSampleApp: App {
    @StateObject private var recipeBox = RecipeBox(recipes: load("recipeData.json"))
    @State private var selectedSidebarItem: SidebarItem = SidebarItem.all
    @State private var selectedRecipeId: Recipe.ID?

    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView(selection: $selectedSidebarItem, recipeBox: recipeBox)
            } content: {
                ContentListView(selection: $selectedRecipeId, selectedSidebarItem: selectedSidebarItem)
            } detail: {
                DetailView(recipeId: $selectedRecipeId)
            }
            .environmentObject(recipeBox)
        }
    }
}
