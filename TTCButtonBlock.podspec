
Pod::Spec.new do |s|
  s.name         = 'TTCButtonBlock'
  s.version      = '1.1.3'
  s.license          = 'MIT'
  s.homepage     = 'https://github.com/zhizihuadeaitan/TTCButtonBlock'
  s.author             = { 'TTCindy' => '493761458@qq.com' }
  s.summary      = '按钮block'
  s.source       = { :git => 'https://github.com/zhizihuadeaitan/TTCButtonBlock.git', :tag => '1.1.3' }
  s.source_files  = 'TTCButtonBlock', 'TTCButtonBlock/**/*.{h,m}'
  s.requires_arc = true
  s.platform     = :ios, '9.0'
  s.frameworks = "UIKit"



end

