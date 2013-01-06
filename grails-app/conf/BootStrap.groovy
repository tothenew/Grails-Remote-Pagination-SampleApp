import com.intelligrape.Book
import com.intelligrape.Comment
import com.intelligrape.Content

class BootStrap {

    def init = { servletContext ->
        
        (1..50).each{
             new Book(name: "name$it", author: "author$it",price: 50 +it).save()
        }

        (1..101).each{
            new Comment(author: 'Amit', comments:"Hello World! Hello World! Hello World! Hello World! Hello World! ..... $it").save()
            new Content(description:"Hello World! Hello World! Hello World! Hello World! Hello World! ..... $it").save()
        }
    }
}
