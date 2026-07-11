cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.49.0"
  sha256 arm:   "8073742731b7c5bc435cf8d7b7c91f7d598991c4874a9faef1b7cc1f0c88f9fd",
         intel: "e63c3566eb047d0b1ab6e8ecb8f640310187ec2d4c4e9a3eff9da669842a1980"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  livecheck do
    url "https://github.com/vigosan/surco-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Caches/com.vigosan.surco",
    "~/Library/Caches/com.vigosan.surco.ShipIt",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
