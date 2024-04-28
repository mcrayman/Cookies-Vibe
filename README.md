# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

3081 Final Project
Intermediate Submission
Matthew McMeans


For my final project, I will build a Ruby on Rails, blog-style web application about the adventures of my cat, Cookie, using PostgreSQL. It will have functionality to view posts/blogs with an image of Cookie, description of what she is doing, and her current mood. It will also implement a sorting filter which can sort the posts by her mood. 

•	Post Model
o	Attributes
	Title
	Description
	Mood
o	Relationships
	Has many: comments
o	Validations 
	Uniqueness of title, description, mood
•	Comment Model
o	Attributes
	Post_id
	Content
o	Relationships 
	Belongs to: post
o	Validations
	Uniqueness of post_id, content

I will use sorting 
•	Implement client-side sorting of posts by mood:
•	Use JavaScript to manipulate the DOM for sorting without page reloads.
•	Retrieve all post elements upon page load.
•	Attach a click event to the mood sort button.
•	On event, sort the posts based on mood and re-render the sorted list.


Ex: 
<select id="moodSorter">
  <option value="happy">Happy</option>
  <option value="sad">Sad</option>
  <option value="playful">Playful</option>
</select>

<div id="postsContainer">
  <div class="card" data-mood="happy">
    <div class="card-body">
      <h5 class="card-title">Post Title 1</h5>
      <p class="card-text">Description...</p>
      <footer class="blockquote-footer">Mood: Happy</footer>
    </div>
  </div>
</div>

… and javascript
// PSEUDOCODE FOR CLIENT-SIDE POST SORTING BY MOOD

// Step 1: Add an event listener to the dropdown menu for mood selection
Add event listener to the 'moodSorter' dropdown that triggers on 'change'

// Step 2: Define the sorting function
Function to sort posts:
    // Convert the HTML collection of post elements into an array
    Collect all post elements from the 'postsContainer' into an array

    // Capture the selected mood from the dropdown
    Get the selected mood value from the 'moodSorter' dropdown

    // Sort the array of posts
    Sort the array of posts using a comparison function:
        For each pair of posts (a, b):
            Get the mood data attribute from each post
            Compare the mood attributes
            If sorting in ascending order:
                Return the comparison result of mood a and mood b
            Else:
                Return the comparison result of mood b and mood a

    // Clear the current display of posts in the DOM
    Empty the contents of the 'postsContainer'

    // Reinsert the sorted array of posts back into the DOM
    For each post in the sorted array:
        Append the post back into the 'postsContainer'

