
security create-keychain -p travis ios-build.keychain
security default-keychain -s ios-build.keychain
security unlock-keychain -p travis ios-build.keychain
security -v set-keychain-settings -lut 86400 ios-build.keychain
security import ./scripts/travis/apple.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./scripts/travis/Certificates.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./scripts/travis/Certificates.p12 -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./scripts/travis/profile/* ~/Library/MobileDevice/Provisioning\ Profiles/
