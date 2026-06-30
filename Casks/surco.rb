cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "a572c865b9254f16688cc1d668e4990de3496a2cda0cd5edd04d57479f0e90b1",
         intel: "50c8cd1d06cec9da261f11d6e092105778192c0e09e8a28a05f0e746f9fc62f1"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
