cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.83.3"
  sha256 arm:   "1ae4883675a9f03020bc2f2130837fdd9ddcc81e7d4045568a32680d8666a17a",
         intel: "d99f5844a6f23f2c8cd481d29fe0d05e7e8c171669f3850bf68eee47a44d5522"

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
