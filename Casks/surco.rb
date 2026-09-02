cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.91.0"
  sha256 arm:   "782a43c269d31c77f23a47d47d28230ffcb24798d618762fb49fdf0c0aaf6a8a",
         intel: "cbb4d7e00644b71dc06eefda4bd9ef245328c032e8861ab481c3514e61ce8e60"

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
