cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.77.1"
  sha256 arm:   "979b96b02659e6eef52f9607534a54dd9e238f3b2d8ba1896c1890a9f705e2c3",
         intel: "ee46ca42df34d24e9963b1b273f0d550f15ed02922ec6dd99d5b6cfa7d9ebf96"

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
