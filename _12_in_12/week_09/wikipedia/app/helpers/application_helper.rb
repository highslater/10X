module ApplicationHelper
  # ********** Helper Methods **********

  def cats
    content_tag(
      :ul,
      class: "nav d-flex flex-column mt-3 pb-0"
    ) do
      concat(
        content_tag(
          :li,
          link_to(
            "ALL",
            articles_path,
            class: "nav-link btn btn-lg btn-outline-primary mt-2"
      )))
      Category.all.each do |cat|
        concat(
          content_tag(
            :li,
            link_to(
              cat.name,
              articles_path( category: cat.name),
              class: "nav-link btn btn-outline-primary mt-2"
            ),
            class: "nav-item"
        ))
      end
    end
  end

  def category_name(a)
    Category.find(a.category_id).name
  end

  def user_email(a)
    User.find(a.user_id).email
  end

  # ********** /Helper Methods **********
end
