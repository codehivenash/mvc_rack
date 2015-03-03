require "sqlite3"

class PostMapper
  @@db = SQLite3::Database.new File.join "db", "app.db"

  def save (post)
    #check if post has an id if it dont it means that its no in the database
    if post.id
      @@db.execute "UPDATE posts SET title=?, body=?, created_at=? WHERE id =?" , [post.title, post.body, post.created_at , post.id]
    else
      @@db.execute "INSERT INTO posts (title, body, created_at) VALUES (?,?,?)", [post.title, post.body, post.created_at.to_s]
    end
  end

  def findAll
    data = @@db.execute "SELECT * FROM posts"
    data.map do |row|
      post = Post.new
      post.id = row[0]
      post.title = row[1]
      post.body = row[2]
      post.created_at = row[3]
      post
    end
  end

  def find (id)
    row = @@db.execute("SELECT id, title, body, created_at FROM posts where id=?" , id).first
    post = Post.new
    post.id = row[0]
    post.title = row[1]
    post.body = row[2]
    post.created_at = row[3]
    post
  end
    
  def delete (id)
    @@db.execute("DELETE FROM posts WHERE id = ? " , id)
  end

end
