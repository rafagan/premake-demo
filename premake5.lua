workspace "cmake_demo"
    configurations { "Debug", "Release" }
    location "build"

project "cmake_demo"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    targetdir "bin/%{cfg.buildcfg}"
    files { "src/**.h", "src/**.cpp" }
    includedirs { "/opt/homebrew/var/homebrew/linked/boost/include" }
    libdirs { "/opt/homebrew/var/homebrew/linked/boost/lib" }
    links { "boost_date_time" }
    filter "configurations:Debug"
        defines { "DEBUG", "FLAG_MACRO", "VALUE_MACRO=123", 'STRING_MACRO="123"' }
        buildoptions { "-Wall", "-Wextra", "-pedantic", "-g" }
        symbols "On"
        defines { 'RES_PATH="./res"', 'LOGS_PATH="./logs"' }
    filter "configurations:Release"
        defines { "RELEASE", "FLAG_MACRO", "VALUE_MACRO=123", 'STRING_MACRO="123"' }
        buildoptions { "-Wall", "-Wextra", "-pedantic", "-O3" }
        optimize "On"
        defines { 'RES_PATH="./res"', 'LOGS_PATH="./logs"' }