variable "dashboard1" {
    type = list (object({
        name = string
        permissions = string
        pagename = string
        widget1 = list(object ({
            title = string
            row = number
            column = number
             width  = number
            height = number
            query  = string
        }))

        widget2 = list(object ({
            title = string
            row = number
            column = number
             width  = number
            height = number
            query  = string
        }))
       }))
     }
