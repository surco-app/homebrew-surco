cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.44.0"
  sha256 arm:   "1027edf2d25aab16699833d00c3b2103fb2cbfe68748f6926262cbd21a0f0e78",
         intel: "305cfc3a2fe42ce4e9126efa75733f7ac340716b73a26ae7ecece7ceeb49e4a3"

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
