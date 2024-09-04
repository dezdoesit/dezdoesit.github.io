import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                NavigationBar(logo: "Brush & Bark"){
                    Link("About", target: About())
                    Link("Home", target: Home())
                    Link("Projects", target: Projects())
                    Link("Publications", target: Publicaitons())

                }
                    .backgroundColor("#2c3e50")
                    .navigationBarStyle(.dark)


                page.body

            }
        }
    }
}
