cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.90.0"
  sha256 arm:   "495c980b003cd2f40d1fd1967ae1759b3eaab2abcfc7f870d1d0eacc76093205",
         intel: "5a062502c3fa87f07be5c1885fbcc94fc722ed5f927404ada876de8f8eae611f"

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
