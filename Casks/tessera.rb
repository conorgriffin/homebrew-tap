cask "tessera" do
  version "1.2.2"
  sha256 "db4e3629273217d2d464e6b7895811f4470e9c7f7f43e5be3b039bf305bd749a"

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
