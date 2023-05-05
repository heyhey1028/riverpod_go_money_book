clean_podfile:
	cd ios && rm -rf Pods
	cd ios && rm Podfile.lock
	gem install cocoapods
	cd ios && arch -x86_64 pod install --repo-update
	flutter clean
	flutter pub get

watch_build:
	flutter pub run build_runner watch --delete-conflicting-outputs