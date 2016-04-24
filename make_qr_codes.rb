require './qr_code.rb'

names = File.read(ARGV[0]).split("\n")
names.each do |name|
  qr = QRCode.new(name)
  qr.write_to_file
end
