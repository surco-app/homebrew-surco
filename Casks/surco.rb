cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "8e7e2ee823a084e94f30fab0a5736b59b7a31a2164c64fe34187272b31042b82",
         intel: "46d50768d380316ab645750bfb3ece2baea608900807718fa721c253a3db7a4a"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
