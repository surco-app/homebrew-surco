cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "707cb7bf91595cea1e2253767638c958de78b6f2c86f7cb741fa9120543c7d32",
         intel: "d3a49c859f6e19f4335e621071876292949e25fe80e692d1f0c53cd242d30909"

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
