class Dmm
  def self.dmm_url(url)
    image_id = url.match(/(cid=)(.+)(\/)/)[2]
    "http://pics.dmm.co.jp/digital/video/#{image_id}/#{image_id}pl.jpg"
  end
end
