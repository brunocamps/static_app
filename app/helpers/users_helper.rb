module UsersHelper
  # Returns the Gravatar for the Given user
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}" # url from gravatar itself
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
