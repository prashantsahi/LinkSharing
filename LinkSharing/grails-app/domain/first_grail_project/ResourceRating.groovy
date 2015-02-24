package first_grail_project

import javax.annotation.Resources

class ResourceRating {
    Integer score
    User user
    static belongsTo = [resource:Resource]
    static constraints = {
        score range: 1..5
    }
}
