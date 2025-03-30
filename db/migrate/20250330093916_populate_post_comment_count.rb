class PopulatePostCommentCount < ActiveRecord::Migration[8.0]
  def change
    Post.all.each do |post|
      # post.update(:comments_count: post.comments.count)
      Post.reset_counters(post.id, :comments)
    end
  end
end
