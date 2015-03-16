package linksharing

class CustomDateTagLib {
  //  static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "gt"
    def cusDate= { attr, body ->
        out << "DATE IS ${new Date().format(attr.format)}"
   }
        def cusRep={attr,body->
        def a=attr.max as Integer
        def b=attr.min as Integer
        (a..b).each{
            out<<  body()

        }
    }
}
