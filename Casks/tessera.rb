cask "tessera" do
  version "1.0"
  sha256 "8f17c1f921a8526b501f4488e8ed8c8789450f75355c4a5ca0632e55e60795c8"

  url "https://github.com/conorgriffin/tessera-releases/releases/download/v#{version}/Tessera-#{version}.dmg",
      verified: "github.com/conorgriffin/tessera-releases/"
  name "Tessera"
  desc "Inspect, verify and build JSON Web Tokens (JWT and JWE)"
  homepage "https://conorgriffin.com/tessera"

  livecheck do
    url "https://conorgriffin.com/tessera/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Tessera.app"

  zap trash: [
    "~/Library/Application Scripts/com.conorgriffin.tessera.direct",
    "~/Library/Containers/com.conorgriffin.tessera.direct",
  ]
end
