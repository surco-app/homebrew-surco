cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.42.0"
  sha256 arm:   "2ba12fd5d4c0f0db19cbeb5731d1bf86e50319370378c7c34d46e2bbfeda23b0",
         intel: "b91baf1388c6b92fad4fd6d577b50a038b24b80bed41ed64ad5326afa42ed03b"

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
