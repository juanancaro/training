ThisBuild / version := "latest"

ThisBuild / scalaVersion := "2.13.8"
enablePlugins(AssemblyPlugin)

lazy val root = (project in file("."))
  .settings(
    name := "training"
  )
