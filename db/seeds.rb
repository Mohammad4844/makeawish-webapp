# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Comment.delete_all
Post.delete_all

posts = [
  { 
    title: "Our Journey with Make-A-Wish", 
    content: "Hi everyone, I wanted to share our family's journey with Make-A-Wish. Our daughter was diagnosed with a life-threatening illness two years ago, and it's been a difficult road for all of us. However, Make-A-Wish has been an incredible source of support and joy for our family.\nLast year, our daughter's wish to go to Disney World was granted by Make-A-Wish. It was an unforgettable experience for all of us, and we're so grateful for everything Make-A-Wish did to make it happen. From the moment we were connected with our wish coordinator, to the planning process, to the actual trip itself, everything was handled with care and professionalism.\nIf you're considering reaching out to Make-A-Wish for your child, I highly recommend it. It's not just about granting a wish - it's about giving your child and your family hope, happiness, and memories that will last a lifetime." 
  },
  {
    title: "Connecting with Other Parents in the Make-A-Wish Community", 
    content: "Hello everyone, I wanted to start a discussion about connecting with other parents in the Make-A-Wish community. As a parent of a child with a life-threatening illness, I know how isolating and overwhelming it can be. That's why I think it's so important to have a support system of other parents who understand what you're going through.\nI was wondering if anyone has any suggestions for how we can connect with each other? Maybe we could start a private Facebook group or a regular Zoom call? I'd love to hear your thoughts and ideas." 
  },
]

posts.each do |p|
  Post.create(p)
end

post_id_1 = Post.first.id
post_id_2 = Post.second.id

comments = [
  { post_id: post_id_1, content: "Thank you so much for sharing your story. I'm so glad to hear that Make-A-Wish was able to bring some joy to your family during a difficult time." },
  { post_id: post_id_1, content: "We're currently in the process of working with Make-A-Wish for our son's wish, and it's been such a positive experience so far. The wish coordinators are so kind and understanding, and they really go above and beyond to make sure everything is perfect." },
  { post_id: post_id_1, content: "Our family also had a wish granted by Make-A-Wish a few years ago, and it was truly life-changing. It's amazing how much joy and hope a wish can bring to a child and their family." },
  { post_id: post_id_2, content: "I think a private Facebook group would be a great idea. It would be a safe and supportive space where we can share our experiences and connect with others who understand." },
  { post_id: post_id_2, content: "I agree. I think a regular Zoom call could also be helpful, especially for parents who don't use Facebook or prefer more real-time communication." },
  { post_id: post_id_2, content: "Another idea could be to organize a local meet-up for parents in the same area. It would be a great way to make more personal connections and maybe even plan some fun outings or activities with our families." },
]

comments.each do |c|
  Comment.create(c)
end