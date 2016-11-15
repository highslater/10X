# Preview all emails at http://localhost:3000/rails/mailers/questions_mailer
class QuestionsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/questions_mailer/submitted
  def submitted
    QuestionsMailer.submitted
  end

end
