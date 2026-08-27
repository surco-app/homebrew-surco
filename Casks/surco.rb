cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.88.0"
  sha256 arm:   "cb0e2a704d1b866c1b2cba8bc5b6f654b374c3e9920179de1fb1e21a77433a9c",
         intel: "d2df5073b0039914ecfaf37c454f451b64abe6a524dc5c651b523e3f55f98de1"

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
