function() {
  var highlightRequestPayload = {
    'book_title': 'Lord of the rings',
    'author_name': 'J. R. R. Tolkien',
    'comment': 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga'
  };   
  var config = {
    highlightRequestPayload: highlightRequestPayload,
	highlightResponse: { ...highlightRequestPayload, id: '#notnull' },
	highlightsUrl: 'http://jsonplaceholder.typicode.com/posts'
  };
  
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}