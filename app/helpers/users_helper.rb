module UsersHelper
  def gravatar_for(user, size: 50)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = !user.email.nil? ? "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}" : "https://www.gravatar.com/avatar/?d=identicon&size=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
