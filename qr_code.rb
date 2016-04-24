require 'rqrcode'

class QRCode
  def initialize(artist_name)
    @name = artist_name
    @qrcode = RQRCode::QRCode.new(artist_name)
  end

  def write_qr_file
    png = @qrcode.as_png(size: 200)
    IO.write("#{artist_name}.png", png.to_s)
  end
end
