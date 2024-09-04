import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Welcome to My Portfolio")
                .font(.title1)
                .fontWeight(.bold)

            Text("I'm a software developer specializing in iOS and Swift development.")
                .font(.lead)

            Section {
                Link("About Me", target: About()) as! BlockElement
                Link("My Projects", target: Projects()) as! BlockElement
                Link("Publications", target: Publications()) as! BlockElement
            }
        }
        .frame(maxWidth: "90%")
    }
}
