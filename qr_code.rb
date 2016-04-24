require 'rqrcode'

class QRCode
  def initialize(artist_name)
    @name = artist_name
    @qrcode = RQRCode::QRCode.new(url_for_artist)
  end

  def url_for_artist
    "http://exfrasis.io/artist/#{@name}"
  end

  def write_to_file
    png = @qrcode.as_png(size: 200)
    IO.write("#{@name}.png", png.to_s)
  end
end
