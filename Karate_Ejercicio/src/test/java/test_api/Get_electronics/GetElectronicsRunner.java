package demoblaze.demoblaze_post_SignUP;


import com.intuit.karate.junit5.Karate;

public class PostRunner {

        @Karate.Test
        Karate electronicsGet(){
            return Karate.run().relativeTo(getClass());
        }
}

