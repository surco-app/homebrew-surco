cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.90.3"
  sha256 arm:   "74186b1c406ba942c3cc96d84f8dc8a32084efdd2fbd0f5f3e640fe41b73b92f",
         intel: "792e3fc50b41bdfd78136cc6b584d82dfdb3713a39e5c7f19d4e73e77bae38dc"

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
