package com.intelligrape.prashant.linksharing

class LinkResource extends Resource {
    String linkUrl


    static constraints = {
        linkUrl url: true,blank: false,unique: true

       }
}
