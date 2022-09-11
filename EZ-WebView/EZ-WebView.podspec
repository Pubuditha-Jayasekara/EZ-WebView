Pod::Spec.new do |spec|
  spec.name         = 'EZ-WebView'
  spec.version      = '0.1.7'
  spec.authors      = { 
    'Pubuditha Jayasekara' => 'jpubuditha@gmail.com',
  }
  spec.license      = { 
    :type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/Pubuditha-Jayasekara/EZ-WebView'
  spec.source       = { 
    :git => 'git@github.com:Pubuditha-Jayasekara/EZ-WebView.git',
    :branch => 'master',
    :tag => spec.version.to_s 
  }
  spec.summary      = 'This is a WKWebView based web view framework which supports for swift UI.'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = '14.0'
end