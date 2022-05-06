import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlWorkerScript"
    Depends { name: "Qt"; submodules: ["core-private","qml-private","qmlworkerscript"]}

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
    cpp.systemIncludePaths: ["C:/Qt/5.14.2/msvc2015_64/include/QtQmlWorkerScript/5.14.2","C:/Qt/5.14.2/msvc2015_64/include/QtQmlWorkerScript/5.14.2/QtQmlWorkerScript"]
    cpp.libraryPaths: []
    
}
