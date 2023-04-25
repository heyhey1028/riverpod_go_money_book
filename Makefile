clean_podfile:
	cd ios && rm -rf Pods
	cd ios && rm Podfile.lock
	gem install cocoapods
	cd ios && arch -x86_64 pod install --repo-update
	flutter clean
	flutter pub get
