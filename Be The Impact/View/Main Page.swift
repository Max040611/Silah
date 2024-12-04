import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()

                // Welcome Title
                Text("Welcome to")
                    .bold()
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                // App Name
                Text("[App Name]")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                   

                // Subtitle
                Text("Manage, scan, and upload\n"
                     + "documents with ease and text to speech")
                    .multilineTextAlignment(.center)
                    .font(.callout)
                    .bold()
                    .foregroundColor(Color(.systemBlue))
                    .padding(.top, 20)
                
                Spacer()
            }
            
            // Tab Bar with the central button layered properly
            VStack {
                Spacer()
                CustomTabBar()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black) // Background color
    }
}

struct CustomTabBar: View {
    var body: some View {
        ZStack {
            // Background tab bar
            HStack {
                // First Tab - Photos
                TabBarItem(imageName: "photo.fill.on.rectangle.fill", label: "Photos")
                
                Spacer()

                // Spacer for the central button
                Spacer()

                // Third Tab - Files
                TabBarItem(imageName: "folder.fill", label: "Files")
            }
            .padding(.horizontal, 50)
            .padding(.top, 10)
            .padding(.bottom, 10)
            .background(Color(.darkGray).opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 50))
            .padding(.horizontal)

            // Central Highlighted Tab - Scan
            VStack {
                Image(systemName: "scanner.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40) // Larger for the center tab
                    .foregroundColor(Color(.systemBlue))
            }
            .frame(width: 70, height: 70)
            .background(Color.black)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color(.systemBlue), lineWidth: 4)
                
            )
            .offset(y: -30) // Move it up for emphasis
        }
        .padding(.bottom, 10)
    }
}

struct TabBarItem: View {
    let imageName: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(Color(.systemBlue))
            
            Text(label)
                .font(.caption)
                .foregroundColor(Color(.systemBlue))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
