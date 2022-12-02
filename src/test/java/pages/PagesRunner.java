package pages;

import com.intuit.karate.junit5.Karate;

public class PagesRunner {
	@Karate.Test
    Karate testHighlightCreation() {
        return Karate.run("create_highlight").relativeTo(getClass());
    }
	
	@Karate.Test
    Karate testHighlightUpdate() {
        return Karate.run("update_highlight").relativeTo(getClass());
    }
	
	@Karate.Test
    Karate testListHighlights() {
        return Karate.run("list_highlights").relativeTo(getClass());
    }
	
	@Karate.Test
    Karate testDeleteHighlight() {
        return Karate.run("delete_highlight").relativeTo(getClass());
    }
	
	@Karate.Test
    Karate testCreateComment() {
        return Karate.run("create_comment").relativeTo(getClass());
    }
	
	@Karate.Test
    Karate testListComments() {
        return Karate.run("list_comments").relativeTo(getClass());
    }
}
