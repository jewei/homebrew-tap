cask "tinydash" do
  version "0.8.0"
  sha256 "844919ce164a6a755452adc19c556e54dcb00e1d51a1169c534debb41a138f4e"

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
