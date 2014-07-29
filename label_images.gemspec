Gem::Specification.new do |s|
	s.name = 'label_images'
	s.version = '0.1.0'
	s.author = 'Bhagirath'
	s.files = ["lib/label_images.rb"]
	s.platform = Gem::Platform::CURRENT
	s.require_paths = ["lib"]
	s.summary = "This can be used to generate images for a name"
	s.license = 'MIT'
	s.email = 'bhagi.goud@gmail.com'
	s.description = <<-EOF
        label_images gem can be used for displaying default image for a contact 
        if you don't have image using contact's name's first alphabet
        EOF
end