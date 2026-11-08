cask "tessera" do
  version "1.0.1"
  sha256 "78bd40120b85af9709d25454adb8d44933d416de0a178185d8433b8e5cfe819f"

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
