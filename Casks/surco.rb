cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.85.0"
  sha256 arm:   "e93fade3c431b4befc9eff7c049205718fb0c1817e3ea26b921c021b97d75fb3",
         intel: "aaa4bbb3f105ffdf5aea212785b94f055cef3ede57eb6f07f7beb0173954ca69"

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
