.class public abstract Lorg/apache/commons/lang/SystemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String;

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final IS_JAVA_1_1:Z

.field public static final IS_JAVA_1_2:Z

.field public static final IS_JAVA_1_3:Z

.field public static final IS_JAVA_1_4:Z

.field public static final IS_JAVA_1_5:Z

.field public static final IS_JAVA_1_6:Z

.field public static final IS_JAVA_1_7:Z

.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_OS2:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field public static final IS_OS_UNIX:Z

.field public static final IS_OS_WINDOWS:Z

.field public static final IS_OS_WINDOWS_2000:Z

.field public static final IS_OS_WINDOWS_7:Z

.field public static final IS_OS_WINDOWS_95:Z

.field public static final IS_OS_WINDOWS_98:Z

.field public static final IS_OS_WINDOWS_ME:Z

.field public static final IS_OS_WINDOWS_NT:Z

.field public static final IS_OS_WINDOWS_VISTA:Z

.field public static final IS_OS_WINDOWS_XP:Z

.field public static final JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final JAVA_COMPILER:Ljava/lang/String;

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final JAVA_HOME:Ljava/lang/String;

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String;

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VERSION_FLOAT:F

.field public static final JAVA_VERSION_INT:I

.field public static final JAVA_VERSION_TRIMMED:Ljava/lang/String;

.field public static final JAVA_VM_INFO:Ljava/lang/String;

.field public static final JAVA_VM_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_VERSION:Ljava/lang/String;

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USER_COUNTRY:Ljava/lang/String;

.field public static final USER_DIR:Ljava/lang/String;

.field public static final USER_HOME:Ljava/lang/String;

.field public static final USER_LANGUAGE:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String;

.field public static final USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_ARCH:Ljava/lang/String;

    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "user.region"

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_DIR:Ljava/lang/String;

    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_HOME:Ljava/lang/String;

    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_NAME:Ljava/lang/String;

    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionTrimmed()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsFloat()F

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_FLOAT:F

    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsInt()I

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_INT:I

    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_1:Z

    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_2:Z

    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_3:Z

    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_4:Z

    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_5:Z

    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_6:Z

    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_7:Z

    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    const-string v1, "HP-UX"

    invoke-static {v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    const-string v2, "Irix"

    invoke-static {v2}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    const-string v3, "Linux"

    invoke-static {v3}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    const-string v3, "LINUX"

    invoke-static {v3}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    sput-boolean v3, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    const-string v6, "Mac"

    invoke-static {v6}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC:Z

    const-string v6, "Mac OS X"

    invoke-static {v6}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    const-string v7, "OS/2"

    invoke-static {v7}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/commons/lang/SystemUtils;->IS_OS_OS2:Z

    const-string v7, "Solaris"

    invoke-static {v7}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    const-string v8, "SunOS"

    invoke-static {v8}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    sput-boolean v4, Lorg/apache/commons/lang/SystemUtils;->IS_OS_UNIX:Z

    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS:Z

    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_2000:Z

    const-string v1, "4.0"

    const-string v2, "Windows 9"

    invoke-static {v2, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_95:Z

    const-string v1, "4.1"

    invoke-static {v2, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_98:Z

    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_ME:Z

    const-string v1, "Windows NT"

    invoke-static {v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_NT:Z

    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_XP:Z

    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_7:Z

    return-void
.end method

.method private static getJavaVersionAsFloat()F
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x5

    .line 18
    if-lt v3, v4, :cond_1

    .line 19
    .line 20
    invoke-static {v2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return v0

    .line 41
    :catch_0
    return v1
.end method

.method private static getJavaVersionAsInt()I
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x5

    .line 34
    if-lt v3, v4, :cond_1

    .line 35
    .line 36
    invoke-static {v2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x4

    .line 41
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "0"

    .line 54
    .line 55
    invoke-static {v2, v0}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return v0

    .line 64
    :catch_0
    return v1
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getJavaVersionTrimmed()Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOSMatches(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
