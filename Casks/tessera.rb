cask "tessera" do
  version "1.2.1"
  sha256 "8734758e8781e5bfc43a19e5cc6959ac79f7b92c5f065feefb6214fdec4718bc"

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
