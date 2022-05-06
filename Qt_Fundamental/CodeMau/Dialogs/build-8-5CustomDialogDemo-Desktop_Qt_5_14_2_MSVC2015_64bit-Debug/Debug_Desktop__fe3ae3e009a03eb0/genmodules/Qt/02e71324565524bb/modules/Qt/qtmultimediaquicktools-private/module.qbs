import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick"
    Depends { name: "Qt"; submodules: ["core","quick","multimedia-private"]}

    architectures: ["x86_64"]
    targetPlatform: "windows"
    hasLibrary: true
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
    libNameForLinkerDebug: "Qt5MultimediaQuickd.lib"
    libNameForLinkerRelease: "Qt5MultimediaQuick.lib"
    libFilePathDebug: "C:/Qt/5.14.2/msvc2015_64/lib/Qt5MultimediaQuickd.lib"
    libFilePathRelease: "C:/Qt/5.14.2/msvc2015_64/lib/Qt5MultimediaQuick.lib"
    pluginTypes: []
    moduleConfig: ["lex","yacc","depend_includepath","testcase_targets","import_plugins","import_qpa_plugin","windows","prepare_docs","qt_docs_targets","qt_build_extra","file_copies","qmake_use","qt","warn_on","release","link_prl","flat","debug_and_release","precompile_header","autogen_precompile_source","embed_manifest_dll","embed_manifest_exe","shared","shared","release","no_plugin_manifest","win32","msvc","copy_dir_files","sse2","aesni","sse3","ssse3","sse4_1","sse4_2","avx","avx2","compile_examples","f16c","force_debug_info","largefile","precompile_header","rdrnd","shani","x86SimdAlways","prefix_build","force_independent","utf8_source","create_prl","link_prl","no_private_qt_headers_warning","QTDIR_build","qt_example_installs","exceptions_off","testcase_exceptions","release","ReleaseBuild","Release","build_pass","c++11","win32-msvc2015","release","ReleaseBuild","Release","build_pass","internal_module","relative_qt_rpath","git_build","target_qt","c++11","strict_c++","qt_install_headers","need_fwd_pri","qt_install_module","debug_and_release","build_all","create_cmake","skip_target_version_ext","release","ReleaseBuild","Release","build_pass","have_target","dll","exclusive_builds","debug_info","no_autoqmake","thread","opengl","moc","resources"]
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.systemIncludePaths: ["C:/Qt/5.14.2/msvc2015_64/include","C:/Qt/5.14.2/msvc2015_64/include/QtMultimediaQuick","C:/Qt/5.14.2/msvc2015_64/include/QtMultimediaQuick/5.14.2","C:/Qt/5.14.2/msvc2015_64/include/QtMultimediaQuick/5.14.2/QtMultimediaQuick"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["qtmultimediaquicktools-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary_import"]
    }
}
