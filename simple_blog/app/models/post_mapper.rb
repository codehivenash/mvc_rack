require "sqlite3"

class PostMapper
  @@db = SQLite3::Database.new File.join "db", "app.db"

  def save (post)
    @@db.execute "INSERT INTO posts (title, body, created_at) VALUES (?,?,?)", [post.title, post.body, post.created_at.to_s]

  end
end
