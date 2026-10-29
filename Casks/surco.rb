cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "2c19ad84bdb7dbf41bc528e5ca08c74557db2778fbb1cb220ee3bb65e26eede9",
         intel: "59b53fb93a73bf3063a0e4941c01342a5512e9a53e71150d82496868c13ca546"

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
