import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuick"
    Depends { name: "Qt"; submodules: ["core-private","gui-private","qml-private","quick-private","3dcore-private","3dquick"]}

    architectures: ["x86_64"]
    targetPlatform: "windows"
    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: undefined
    libNameForLinkerRelease: undefined
    libFilePathDebug: undefined
    libFilePathRelease: undefined
    pluginTypes: []
    moduleConfig: []
    cpp.defines: []
    cpp.systemIncludePaths: ["C:/Qt/5.14.2/msvc2015_64/include/Qt3DQuick/5.14.2","C:/Qt/5.14.2/msvc2015_64/include/Qt3DQuick/5.14.2/Qt3DQuick"]
    cpp.libraryPaths: []
    
}
