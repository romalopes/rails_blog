class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_rich_text :body

  after_create_commit :notify_recipient
  before_destroy :cleanup_notifications
  has_noticed_notifications model_name: "Notification"

  private
    def notify_recipient
      CommentNotification.with(comment: self, post: self.post).deliver_later(post.user)
    end

    def cleanup_notifications
      # Notification.where(comment_id: comment.id).destroy
      notifications_as_comment.destroy_all
    end
end
