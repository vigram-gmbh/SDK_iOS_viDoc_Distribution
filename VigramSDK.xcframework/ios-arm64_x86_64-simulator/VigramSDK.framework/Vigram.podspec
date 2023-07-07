
Pod::Spec.new do |s|
    s.name         = 'Vigram'
    s.version      = '0.5.1'
    s.summary      = 'VigramSDK allows the seamless communication with the Vigram module.'
    s.description  = <<-DESC
    VigramSDK connects to the Vigram module, forwards Ntrip correction data to it and 
    receives RTK and laser information.
    DESC
    s.homepage     = 'https://vigram.de'
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020
                   Permission is granted to...
                  LICENSE
                }
    s.source = { :git => 'https://gitlab.com/viapps/vidoc-sdk-ios-1gh/vigramsdk-distribution.git', :tag => '0.5.1' }
    s.author = { 'Kh.Iaroslav' => 'iaroslav.khaustov@vigram.com ' }

    s.platform = :ios
    s.swift_version = '5.5'
    s.ios.deployment_target  = '13.0'
    s.default_subspec = 'Core'

    s.subspec 'Core' do |ss|
        ss.vendored_frameworks = 'VigramSDK.xcframework'
    end

    s.subspec 'Rx' do |ss|
        ss.source_files = 'VigramSDK+Rx/*.swift'
        ss.dependency 'Vigram/Core'
	    ss.dependency 'RxSwift', '~> 6.2'
    end

end

