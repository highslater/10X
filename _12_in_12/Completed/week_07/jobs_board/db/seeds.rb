# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Creates 100 Jobs
jobs = []
[
  {c: 'FaceBook', u: 'https://www.facebook.com'},
  {c: 'Twitter', u: 'https://twitter.com'},
  {c: 'GitHub', u: 'https://github.com'},
  {c: 'Google', u: 'https://www.google.com'},
  {c: 'DuoLingo', u: 'https://www.duolingo.com'},
].each do |h1|
  [
    {t: 'Full Stack Web Developer', d: 'Senior Level' },
    {t: 'Web Developer Intern', d:  'Entry Level'},
    {t: 'Front End Web Developer', d:  'Junior Level'},
    {t: 'Dev Ops Engineer', d:  'Mid Level'},
    {t: 'Web Design Intern', d:  'Intern Level'},
  ].each do |h2|
    [
      4,3,2,1
    ].each do |cat|

      jobs.push(
        title: h2[:t],
        description: h2[:d],
        category_id: cat,
        company: h1[:c],
        url: h1[:u]
      )

    end
  end
end

jobs.shuffle.each do |job|
  Job.find_or_create_by(job)
end

# Creates 4 Categories
['Full Time', 'Part Time', 'FreeLance', 'Consulting'].each do |category|
  Category.find_or_create_by(name: category)
end
