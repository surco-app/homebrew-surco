cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "8f221ce7348d6b4cedc7294a6d850a457f51f19d5fd3dee83cde59c71a7f718d",
         intel: "19b984eaffb2bb88f07f48303d19530e4af560df546e6430cfd9a62d414f6f1f"

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
