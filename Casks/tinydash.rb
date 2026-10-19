cask "tinydash" do
  version "0.7.0"
  sha256 "df50d6a03d2ba34dd50fc5de7ced2f74f112782cbec0b638c7a3ce06f92fc413"

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
