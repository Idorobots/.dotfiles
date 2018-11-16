import sbt._
import net.ceedubs.sbtctags.CtagsKeys

CtagsKeys.ctagsSrcDirs ++= Seq(
  (Keys.sourceDirectory in Compile).value,
  (Keys.sourceDirectory in Test).value
)
CtagsKeys.ctagsParams ~= (_.copy(languages = Seq("scala", "Java", "typescript")))
CtagsKeys.ctagsParams ~= (default => default.copy(tagFileName = "TAGS", extraArgs = "-e" +: default.extraArgs))
