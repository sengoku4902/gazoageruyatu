module ApplicationHelper
    def avatar_url(user)
        return user.profile_photo unless user.profile_photo.nil?
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase
        "https://icon1216.s3-ap-northeast-1.amazonaws.com/gazoageruyatu/icon.png"
    end
end
