cask "wake" do
  version "0.2.0"
  sha256 "9f40c23712ae7c3cadd569ceb70c64f369d9b2611aca78ff008aa9f2beea523a"

  url "https://wake.calmapps.com/releases/macos/wake-#{version}-macos.dmg"
  name "wake"
  desc "Prevents sleep, even with the lid closed"
  homepage "https://wake.calmapps.com/"

  livecheck do
    url "https://wake.calmapps.com/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "wake.app"

  uninstall quit: "com.calmapps.wake"

  zap trash: [
    "~/Library/Application Support/wake",
    "~/Library/Caches/com.calmapps.wake",
    "~/Library/HTTPStorages/com.calmapps.wake",
    "~/Library/Preferences/com.calmapps.wake.plist",
  ]
end
