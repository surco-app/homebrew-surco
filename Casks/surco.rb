cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.68.0"
  sha256 arm:   "a0a1e451b4d16f554b0c7813f7368cae8bf1f4f5ced04b59e3f3a3ad2a42c6ac",
         intel: "262671a57db70726e37b31ebc5522986fc59c0a2ebea3413a76f787274979a7b"

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
