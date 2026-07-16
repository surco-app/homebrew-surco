cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.61.2"
  sha256 arm:   "afacc9dc0de58ef5bad1d5a894b868091c88c474cabd9f24b3d7492fb0c7fae1",
         intel: "9c0731dbf2234a3759f95266a74fcca47431fce8b3df3ec40b6c5b3a650e474e"

  url "https://github.com/surco-app/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/surco-app/surco-releases"

  livecheck do
    url "https://github.com/surco-app/surco-releases"
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
