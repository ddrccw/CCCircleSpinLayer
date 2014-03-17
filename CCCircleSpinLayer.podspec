Pod::Spec.new do |s|
  s.name     = 'CCCircleSpinLayer'
  s.version  = '1.0'
  s.summary  = 'circle spin layer'
  s.homepage = 'https://github.com/ddrccw/CCCircleSpinLayer'
  s.author   = { 'ddrccw' => 'ddrccw@gmail.com' }
  s.source   = { :git => 'https://github.com/ddrccw/CCCircleSpinLayer.git'}
  s.source_files = 'CCCircleSpinLayer/*.{h,m}'
  s.framework    = 'QuartzCore'
  s.requires_arc = true
end
