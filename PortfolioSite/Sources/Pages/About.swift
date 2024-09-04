import Foundation
import Ignite

struct About: StaticPage {
    var title = "About"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Hello world! Bye!")
            .font(.title1)
    }
}
