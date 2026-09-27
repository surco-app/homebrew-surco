cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.3.3"
  sha256 arm:   "473c4f4d94ad7e127fcfa4b9bc5e1bf1f07ca13a06c603daa864ce0086ac2f2b",
         intel: "a6d1b7875cd2bbb741ee007d9b04b0921e7969e1d76958fe217f1b7f26885a6b"

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
