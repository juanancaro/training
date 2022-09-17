ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "2.13.8"
enablePlugins(AssemblyPlugin)

lazy val root = (project in file("."))
  .settings(
    name := "training",
    assembly / assemblyJarName := "training.jar"
  )
