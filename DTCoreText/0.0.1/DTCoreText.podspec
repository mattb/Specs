Pod::Spec.new do |s|
  s.name     = 'DTCoreText'
  s.version  = '0.0.1' # fake version number because there don't seem to be any on their repo
  s.license  = 'BSD'
  s.summary  = 'duplicate the methods present on Mac OSX which allow creation of NSAttributedString from HTML code on iOS'
  s.homepage = 'https://github.com/Cocoanetics/DTCoreText'
  s.author   = { 'Oliver Drobik' => 'oliver@drobnik.com' }
  s.source   = { :git => 'http://github.com/Cocoanetics/DTCoreText.git', :revision => '26f653303a5c076828011f4562efafaf327d6555' }
  s.platform = :ios
  s.source_files = 'Core/Source'
  s.clean_paths = "Demo", "DTCoreText.xcodeproj"
  s.framework = 'QuartzCore','CoreText'
  s.requires_arc = true

  def s.post_install(target)
    prefix_header = config.project_pods_root + target.prefix_header_filename
    prefix_header.open('a') do |file|
      file.puts(%{#define ALLOW_IPHONE_SPECIAL_CASES 1})
    end
  end
end
