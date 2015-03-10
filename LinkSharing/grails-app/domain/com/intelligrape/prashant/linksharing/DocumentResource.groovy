package com.intelligrape.prashant.linksharing

class DocumentResource extends Resource {
    String filePath
    String fileName
    String fileType

    static constraints = {
        filePath blank: false
        fileName blank: false
        fileType blank: false
    }
}

