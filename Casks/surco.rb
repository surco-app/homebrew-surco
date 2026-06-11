cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "13d52d779f4e4751e8d3edbdd059a0c5cc715abf897ee2843f243e772a905ddc",
         intel: "1b3bcf23e529d186d0829136accf9c8c4fbb439b18ac346a9b32d3b86166d080"

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
