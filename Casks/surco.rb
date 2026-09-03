cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.92.0"
  sha256 arm:   "7efc12b8f575e4c2743210ce577f1df98ce0e16f568076dc797008c1f7e3ecfb",
         intel: "fda3fe0c6a473cb58af95915e09bcc6bb7f04cb5024d96586f27ddd33fcb085b"

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
