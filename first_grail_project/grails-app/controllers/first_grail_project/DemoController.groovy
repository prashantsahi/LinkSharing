package first_grail_project

class DemoController {

    def hello()
    {

        redirect(action : 'index')

    }
    def index() {
        String name="prashant"
       // render (view : "hello",model: [name:name])
        render("firstname: ${params.firstname}")


    }
    def a()
    {
        render(view: "hello")

    }
    def demo1()
    {
        String name="sahi"
        render(view: "hello",model: [name:name])

    }

    def demoTemp()
    {
        String name="sahi"
        render(template: "demoTemplate",model: [name:name])

    }


}
