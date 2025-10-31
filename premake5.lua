workspace "glad"
   configurations { "Debug", "Release" }
   location "build"
   language "C"

project "glad"
   kind "StaticLib"
   files { "src/glad.c", "include/glad/*.h", "include/KHR/*.h" }
   includedirs { "include" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

