cask "tinydash" do
  version "0.6.2"
  sha256 "7748d6256bf8e36f6d3f0bc064f7a972f028a38f18cf069abed06b06ab4c976f"

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
