package blog2

import com.manifest.corp.Comments
import com.manifest.corp.Posts
import com.manifest.corp.User
import org.springframework.beans.factory.annotation.Autowired

class BootStrap {



    def init = { servletContext ->
        def post1= new Posts(postText: 'sad', author: 'Matthew Beebe', postId: '1', title: 'Do not be glad, get').save()
        def post2= new Posts(postText: 'very sad', author: 'Tom Yeager', postId: '2', title: 'not quit super sad, but').save()
        def user1= new User(firstName:'Matthew', lastName: 'Beebe', username: 'mbeebe', password: 'abc123', userId: ';lkjagdklsdaglkdsa').save()
        def user2= new User(firstName:'Tom', lastName: 'Yeager', username: 'tyeager', password: 'abc321', userId: ';lksdfggerdaglkdsa').save()
        def comment1= new Comments(commentText:'this is very sad', postId: '1', commenter: 'Smitty Von Yeager Man Jenson').save()
        def comment2= new Comments(commentText:'outrageously sad', postId: '1', commenter: 'Bob').save()

    }
    def destroy = {
    }
}
