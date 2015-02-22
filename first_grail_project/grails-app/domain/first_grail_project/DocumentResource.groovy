package first_grail_project

class DocumentResource extends Resource{
    String filePath

    static constraints = {
//        filePath blank: false,nullable: false
          filePath blank: false,nullable: true
        }
}

