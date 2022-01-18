3.times do |topic|
    Topic.create!(
        title: "Topic number #{topic}"
    )
end
puts "3 Topics created"


10.times do |i|
    Blog.create!(
        title:      "My blog post #{i + 1}",
        body:       "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        topic_id:   Topic.last.id
    )
end
puts "10 Blogs created"

5.times do |i|
    Skill.create!(
        title:      "Rails #{i + 1}",
        percent_utilized: i
    )
end
puts "5 Skills created"


4.times do |i|
    Portfolio.create!(
        title:      "Ruby on Rails #{i + 1}",
        subtitle:   "Topic #{ i + 1 }",
        body:       "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image:"https://via.placeholder.com/350x200"
    )
end

5.times do |i|
    Portfolio.create!(
        title:      "React #{i + 1}",
        subtitle:   "Topic #{ i + 1 }",
        body:       "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image:"https://via.placeholder.com/350x200"
    )
end
puts "9 Portfolios created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Tecnology #{technology}"
    )
end

puts "3 Technologies created"
