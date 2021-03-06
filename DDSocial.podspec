Pod::Spec.new do |s|  
  s.name             = "DDSocial"  
  s.version          = "1.1.0"  
  s.summary          = "A share auth wheels based on the official library content wecaht sina tencent facebook twitter google mi"  
  s.homepage         = "https://github.com/393385724/DDSocial"  
  s.license          = 'MIT'  
  s.author           = { "llg" => "393385724@qq.com" }  
  s.source           = { :git => "https://github.com/393385724/DDSocial.git", :tag => s.version.to_s }  
  
  s.platform     = :ios, '8.0'  
  s.requires_arc = true 

  s.subspec 'Core' do |core|
    core.source_files  = 'DDSocial/Core/*.{h,m}'
    core.frameworks    = 'Foundation', 'UIKit'
  end

  s.subspec 'Tencent' do |tencent|
    tencent.source_files = 'DDSocial/Tencent/Handler/*.{h,m}'
    tencent.ios.vendored_frameworks = 'DDSocial/Tencent/TencentSDK/*.framework'
    tencent.resource = "DDSocial/Tencent/TencentSDK/*.bundle"
    tencent.libraries = 'z', 'sqlite3','stdc++','iconv'  
    tencent.frameworks = 'SystemConfiguration','CoreGraphics', 'CoreTelephony', 'Security'
    tencent.dependency 'DDSocial/Core'
  end

  s.subspec 'Wechat' do |wechat|
    wechat.source_files = 'DDSocial/Wechat/*.{h,m}'
    wechat.dependency 'WechatOpenSDK'
    wechat.dependency 'DDSocial/Core'
  end

  s.subspec 'Sina' do |sina|
    sina.source_files = 'DDSocial/Sina/*.{h,m}'
    sina.dependency 'WeiboSDK', '~> 3.1.3'   
    sina.dependency 'DDSocial/Core'
  end

  s.subspec 'Facebook' do |facebook|
    facebook.source_files = 'DDSocial/Facebook/*.{h,m}'
    facebook.dependency 'FBSDKLoginKit', '~> 4'
    facebook.dependency 'FBSDKShareKit', '~> 4'
    facebook.dependency 'DDSocial/Core'
  end

  s.subspec 'Twitter' do |twitter|
    twitter.source_files = 'DDSocial/Twitter/*.{h,m}'
    twitter.dependency 'TwitterKit','~> 2'
    twitter.dependency 'DDSocial/Core'
    twitter.xcconfig = { 'CLANG_ENABLE_MODULES' => 'NO' }
  end
  
  s.subspec 'MiLiao' do |miliao|
    miliao.source_files = 'DDSocial/MiLiao/Handler/*.{h,m}'
    miliao.ios.vendored_frameworks = 'DDSocial/MiLiao/MiLiaoSDK/*.framework'
    miliao.dependency 'DDSocial/Core'
  end
  
  s.subspec 'Google' do |google|
    google.source_files = 'DDSocial/Google/*.{h,m}'
    google.dependency 'Google/SignIn', '~> 2.0.3' 
  end
  
  s.subspec 'MI' do |mi|
    mi.dependency 'DDMISDK', '~> 1.0.1' 
  end
  
  s.subspec 'Share' do |share|
    share.source_files  = 'DDSocial/Handler/DDSocialShareHandler.{h,m}' 
  end

  s.subspec 'Auth' do |auth|
    auth.source_files = 'DDSocial/Handler/DDSocialAuthHandler.{h,m}'
  end
end  
