cask "tinydash" do
  version "0.6.1"
  sha256 "b6e80453288059739b79b3ebfa720a7cd3839a91a027a8a8bf86c19ba48d645b"

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
