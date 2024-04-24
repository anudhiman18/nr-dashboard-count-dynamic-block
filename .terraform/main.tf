resource "newrelic_one_dashboard" "dashboard"{
    count = length(var.dashboard1)
    name        = var.dashboard1[count.index].name
  permissions = var.dashboard1[count.index].permissions

  page {
    name = var.dashboard1[count.index].pagename

   dynamic "widget_billboard" {
        for_each  =toset(var.dashboard1[count.index].widget1)
        iterator = mywidget
 
     content{ 
      
        title  = mywidget.value.title
        row    = mywidget.value.row
        column = mywidget.value.column
        width  = mywidget.value.width
        height = mywidget.value.height

        nrql_query {
            query= mywidget.value.query   
        }
    }
    }
       
       dynamic "widget_area" {
        for_each = toset(var.dashboard1[count.index].widget2)
        iterator = mywidget
     content{ 
        title  = mywidget.value.title
        row    = mywidget.value.row
        column = mywidget.value.column
        width  = mywidget.value.width
        height = mywidget.value.height

        nrql_query {
            query = mywidget.value.query
        }
     }

   }
    }
}

       
#        dynamic "widget_area" {
#         for_each = var.dashboard1.widget1
#         iterator = mywidget
#      content{ 
#         title  = mywidget.value.title
#         row    = mywidget.value.row
#         column = mywidget.value.column
#         width  = mywidget.value.width
#         height = mywidget.value.height

#         nrql_query {
#             query = mywidget.value.query
#         }
#     }
# }
