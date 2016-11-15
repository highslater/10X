# videoblog/mailers/questions_mailer.rb
class QuestionsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.questions_mailer.submitted.subject
  #
  def submitted(question)
    @question = question

    mail to: "blog-ownwr@example.org", subject: 'New Comment'
  end
end
