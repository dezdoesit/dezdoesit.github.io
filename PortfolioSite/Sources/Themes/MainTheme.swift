import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                let brandImage = Image("/images/log.svg", description: "EZDEZIT")

                NavigationBar(logo: brandImage){
                    Link("About", target: About())
                    Link("Projects", target: Projects())
                    Link("Publications", target: Publicaitons())

                }
                    .backgroundColor("#2c3e50")
                    .navigationBarStyle(.dark)


                page.body

                IgniteFooter()

            }
        }
    }
}
