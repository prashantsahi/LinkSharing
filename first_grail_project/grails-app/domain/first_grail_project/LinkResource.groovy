package first_grail_project

class LinkResource extends Resource {
    String linkUrl


    static constraints = {
        //linkUrl url: true,nullable: false
        linkUrl nullable: true
    }
}
