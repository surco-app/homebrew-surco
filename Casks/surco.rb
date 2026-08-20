cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.86.2"
  sha256 arm:   "df3b2b440abe76ac9ecb3936a0b4b284ea1c9d54c01ff413525b995683756194",
         intel: "75eb11e25e2eb5c90dc9b2979b1a1f4967707d1ab5c234050f2c7d05b5a376fa"

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
