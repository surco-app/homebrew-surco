cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.82.0"
  sha256 arm:   "347f2674310312b99dcd4f80a326b5bdb03b24019d92e4bc4ed6b9f98c9a82b6",
         intel: "c9637e23b1a9e6cf2093da76190ef51313cc2950ef83faa805a8e54993e02323"

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
