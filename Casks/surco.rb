cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "1e08d46716c92c3da8ba99bda81c8511bb94867389582c2566879d91c1318504",
         intel: "aae500c3891c3d9aa667cda443790f1d193dd612fd565e9a3d2bba529c5596b3"

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
