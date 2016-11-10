class AddMeetingAttrsToMessage < ActiveRecord::Migration
  def change
    add_column(:messages, :meeting_time, :datetime)
    add_column(:messages, :friends_message, :text)
    add_column(:messages, :message_type, :text, default: 'message')
  end
end
