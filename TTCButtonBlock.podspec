
Pod::Spec.new do |s|
  s.name         = 'TTCButtonBlock'
  s.version      = '1.0.1'
  s.license          = 'MIT'
  s.homepage     = 'https://github.com/zhizihuadeaitan/TTCButtonBlock'
  s.author             = { 'Cindy' => '493761458@qq.com' }
  s.summary      = '数据存储及展示'
  s.source       = { :git => 'https://github.com/zhizihuadeaitan/TTCButtonBlock.git', :tag => '1.0.1' }
  s.source_files  = 'TTCButtonBlock', 'TTCButtonBlock/**/*.{h,m}'
  s.requires_arc = true
  s.platform     = :ios, '9.0'
  s.frameworks = "UIKit"



end

