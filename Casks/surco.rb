cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "cb125bec872ef0ecb5c23d3ab804f6cf9c316f52580ddc4d6461b0c7c61e11b8",
         intel: "00deccff34ea264af0cc79bc87655fc81e11ee8a326886c987af48260dfc2324"

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
