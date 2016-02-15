setup:	
	@gem install bundler
	@bundle install
	@pod install
test:
	@xcodebuild test -workspace iOS-MVVM.xcworkspace -scheme iOS-MVVM -destination 'name=iPhone 5s'	