# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Job(
#   title: string,
#   description: text,
#   company: string, url: string,
#   category_id: integer
# )
Job.create(
  [
    {
      title: 'Full Stack Web Developer', description: 'Senior Level',
      company: 'Twitter', category_id: 1, url: '#'
    },
    {
      title: 'Full Stack Web Developer', description: 'Junior Level',
      company: 'Twitter', category_id: 2, url: '#'
    },
    {
      title: 'Front End Web Developer', description: 'Senior Level',
      company: 'FaceBook', category_id: 3, url: '#'
    },
    {
      title: 'Front End Web Developer', description: 'Junior Level',
      company: 'FaceBook', category_id: 4, url: '#'
    },
  ]
)


# Category(
#     id: integer,
#     name: string,
#     )
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
