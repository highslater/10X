# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

Job.create(
  [
    {
      title: 'Full Stack Web Developer', description: 'Senior Level',
      company: 'Twitter', category_id: 1, url: 'https://twitter.com'
    },
    {
      title: 'Full Stack Web Developer', description: 'Junior Level',
      company: 'Twitter', category_id: 2, url: 'https://twitter.com'
    },
    {
      title: 'Front End Web Developer', description: 'Senior Level',
      company: 'FaceBook', category_id: 3, url: 'https://www.facebook.com/'
    },
    {
      title: 'Front End Web Developer', description: 'Junior Level',
      company: 'FaceBook', category_id: 4, url: 'https://www.facebook.com/'
    },
  ]
)


Category.create(
  [
    {
      name: 'Full Time'
    },
    {
      name: 'Part Time'
    },
    {
      name: 'FreeLance'
    },
    {
      name: 'Consulting'
    },
  ]
)
