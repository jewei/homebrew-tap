cask "tinydash" do
  version "0.9.0"
  sha256 "6e964b4787c21efa5b933baf0de262e1b8287acddfdc67868d8659fed3aa1c35"

  url "https://github.com/jewei/tinydash/releases/download/v#{version}/TinyDash_#{version}_universal.dmg"
  name "TinyDash"
  desc "Keyboard-first launcher"
  homepage "https://github.com/jewei/tinydash"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "TinyDash.app"

  uninstall quit: "dev.tinydash.launcher"

  zap trash: [
    "~/Library/Application Support/dev.tinydash.launcher",
    "~/Library/Caches/dev.tinydash.launcher",
    "~/Library/LaunchAgents/TinyDash.plist",
    "~/Library/Preferences/dev.tinydash.launcher.plist",
    "~/Library/WebKit/dev.tinydash.launcher",
  ]
end
