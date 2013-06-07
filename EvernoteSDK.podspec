Pod::Spec.new do |s|
  s.name     = 'SIEvernoteSDK'
  s.version  = '1.0'
  s.platform = :ios,'5.0'
  s.license  = 'https://github.com/evernote/evernote-sdk-ios/blob/master/LICENSE'
  s.summary  = 'EvernoteSDK改进版'
  s.homepage = 'https://github.com/vitoziv/evernote-sdk-ios'
  s.author   = { 'Vito Zhang' => 'zhangwei.noair@gmail.com' }
  s.requires_arc = true
  s.source   = { :git => 'https://github.com/vitoziv/evernote-sdk-ios.git', :tag => '1.2.0' }
  s.source_files = 'evernote-sdk-ios/*.{h,m}',
    'evernote-sdk-ios/{EDAM,Utilities,internal}/**/*.{h,m}',
    'evernote-sdk-ios/3rdParty/{AFNetworking,KSHTMLWriter,NSString+URLEncoding,Thrift,cocoa-oauth}/**/*.{h,m}'
  s.frameworks = 'Foundation', 'Security', 'StoreKit'

  s.dependency 'SSKeychain', '0.2.1'
end
