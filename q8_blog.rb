# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.

require './q7_helpermethods.rb'
# module HelperMethods
#
#     def titleize(string)
#         words = string.split
#         (words.map {|word| words.index(word) != 0 && (word == "in" || word == "the" ||  word == "of" || word == "and" || word == "or" || word == "from" || word == "is" || word == "a") ? word : word.capitalize}).join(" ")
#     end
#
# end

module Blog
    class Article
        attr_accessor :title, :body
        include HelperMethods
        def initialize(title, body)
            @title = title
            @body = body
        end
        def title
            titleize(@title)
        end
    end

    class Snippet < Article
        attr_accessor :title, :body
        include HelperMethods
        def title
            titleize(@title)
        end
        def body
            if @body.length > 100
                puts "#{@body[0..100]}..."
            else
                puts "#{@body}"
            end
        end

    end
end