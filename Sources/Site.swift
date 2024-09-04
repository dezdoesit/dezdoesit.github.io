import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Hello World"
    var titleSuffix = " – My Portfolio Site"
    var url = URL("dezdoesit.github.io")
    var builtInIconsEnabled = true

    var author = "Dez Blair"

    var homePage = Home()
    var theme = MyTheme()
}


