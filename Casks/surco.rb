cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "af6972b59adcd49c65fbb54453271c7de645ef6ed6d17571e07b38ab467da0fd",
         intel: "de6fca9c8ea6f3869a906ae4ccc0973f77c8b7943a8ac90aa853c7a793f672b5"

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
