Pod::Spec.new do |s|
  s.name     = 'Lumberjack'
  s.version  = '1.3.1'
  s.license  = 'BSD'
  s.summary  = 'A fast & simple, yet powerful & flexible logging framework for Mac and iOS'
  s.homepage = 'https://github.com/robbiehanson/CocoaLumberjack'
  s.author   = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source   = { :git => 'http://github.com/robbiehanson/CocoaLumberjack.git', :tag => '1.3.1' }
  s.source_files = 'Lumberjack'
  s.clean_paths = "Benchmarking", "Xcode"
  s.requires_arc = true
end
