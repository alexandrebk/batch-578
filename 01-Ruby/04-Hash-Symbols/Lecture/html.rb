def tag(tag_name, content, options = {})
  options_html = ""
  options.each do |key, value|
    options_html += " #{key}='#{value}'"
  end

  "<#{tag_name} #{options_html}>#{content}</#{tag_name}>"
end

content = 'Hello world'
options = { class: "bold", href: "http://lewagon.org" }

p tag("h1", content, options)
# "<h1  class='bold' href='http://lewagon.org'>Hello world</h1>"

