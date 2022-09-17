ThisBuild / version := "latest"

ThisBuild / scalaVersion := "2.13.8"

lazy val root = (project in file("."))
  .settings(
    name := "training",
    assembly / assemblyJarName := "training.jar"
  )
