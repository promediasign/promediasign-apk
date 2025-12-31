.class public final Lcom/sun/jna/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AIX:I = 0x7

.field public static final ANDROID:I = 0x8

.field public static final ARCH:Ljava/lang/String;

.field public static final C_LIBRARY_NAME:Ljava/lang/String;

.field public static final FREEBSD:I = 0x4

.field public static final GNU:I = 0x9

.field public static final HAS_AWT:Z

.field public static final HAS_BUFFERS:Z

.field public static final HAS_DLL_CALLBACKS:Z

.field public static final HAS_JAWT:Z

.field public static final KFREEBSD:I = 0xa

.field public static final LINUX:I = 0x1

.field public static final MAC:I = 0x0

.field public static final MATH_LIBRARY_NAME:Ljava/lang/String;

.field public static final NETBSD:I = 0xb

.field public static final OPENBSD:I = 0x5

.field public static final RESOURCE_PREFIX:Ljava/lang/String;

.field public static final RO_FIELDS:Z

.field public static final SOLARIS:I = 0x3

.field public static final UNSPECIFIED:I = -0x1

.field public static final WINDOWS:I = 0x2

.field public static final WINDOWSCE:I = 0x6

.field private static final osType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v3, Lcom/sun/jna/Platform;->osType:I

    const-string v0, "jna.nounpack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    sput v7, Lcom/sun/jna/Platform;->osType:I

    goto/16 :goto_3

    :cond_1
    const-string v1, "AIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput v2, Lcom/sun/jna/Platform;->osType:I

    goto/16 :goto_3

    :cond_2
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "Windows CE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput v5, Lcom/sun/jna/Platform;->osType:I

    goto :goto_3

    :cond_4
    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput v4, Lcom/sun/jna/Platform;->osType:I

    goto :goto_3

    :cond_5
    const-string v1, "Solaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "FreeBSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/sun/jna/Platform;->osType:I

    goto :goto_3

    :cond_7
    const-string v1, "OpenBSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_0

    :cond_8
    const-string v1, "gnu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x9

    goto :goto_0

    :cond_9
    const-string v1, "gnu/kfreebsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    const-string v1, "netbsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    goto :goto_0

    :cond_b
    const/4 v0, -0x1

    goto :goto_0

    :cond_c
    :goto_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_d
    :goto_2
    sput v6, Lcom/sun/jna/Platform;->osType:I

    :goto_3
    :try_start_0
    const-string v0, "java.nio.Buffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    nop

    const/4 v0, 0x0

    :goto_4
    sget v1, Lcom/sun/jna/Platform;->osType:I

    if-eq v1, v5, :cond_e

    if-eq v1, v3, :cond_e

    if-eq v1, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_5
    sput-boolean v2, Lcom/sun/jna/Platform;->HAS_AWT:Z

    if-eqz v2, :cond_f

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    sput-boolean v2, Lcom/sun/jna/Platform;->HAS_JAWT:Z

    sput-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eq v1, v5, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Lcom/sun/jna/Platform;->RO_FIELDS:Z

    const-string v0, "coredll"

    const-string v2, "msvcrt"

    if-ne v1, v4, :cond_11

    move-object v3, v2

    goto :goto_8

    :cond_11
    if-ne v1, v5, :cond_12

    move-object v3, v0

    goto :goto_8

    :cond_12
    const-string v3, "c"

    :goto_8
    sput-object v3, Lcom/sun/jna/Platform;->C_LIBRARY_NAME:Ljava/lang/String;

    if-ne v1, v4, :cond_13

    move-object v0, v2

    goto :goto_9

    :cond_13
    if-ne v1, v5, :cond_14

    goto :goto_9

    :cond_14
    const-string v0, "m"

    :goto_9
    sput-object v0, Lcom/sun/jna/Platform;->MATH_LIBRARY_NAME:Ljava/lang/String;

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sun/jna/Platform;->getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    if-ne v1, v4, :cond_15

    const-string v1, "aarch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v6, 0x1

    :cond_15
    sput-boolean v6, Lcom/sun/jna/Platform;->HAS_DLL_CALLBACKS:Z

    invoke-static {}, Lcom/sun/jna/Platform;->getNativeLibraryResourcePrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "powerpc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ppc64"

    if-eqz v0, :cond_0

    const-string p0, "ppc"

    goto :goto_2

    :cond_0
    const-string v0, "powerpc64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, v1

    goto :goto_2

    :cond_1
    const-string v0, "i386"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "i686"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "x86_64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "amd64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "zarch_64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "s390x"

    goto :goto_2

    :cond_4
    :goto_0
    const-string p0, "x86-64"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, "x86"

    :cond_6
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sun.cpu.endian"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "little"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "ppc64le"

    :cond_7
    const-string v0, "arm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/sun/jna/Platform;->isSoftFloat()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "armel"

    :cond_8
    return-object p0
.end method

.method public static getNativeLibraryResourcePrefix()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "jna.prefix"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Platform;->getOSType()I

    move-result v0

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sun/jna/Platform;->getNativeLibraryResourcePrefix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeLibraryResourcePrefix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p0}, Lcom/sun/jna/Platform;->getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string p2, "-"

    .line 2
    invoke-static {p0, p2, p1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3
    :pswitch_1
    const-string p0, "netbsd-"

    .line 4
    :goto_0
    invoke-static {p0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 5
    :pswitch_2
    const-string p0, "kfreebsd-"

    goto :goto_0

    :pswitch_3
    const-string p0, "arm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p1, p0

    :cond_1
    const-string p0, "android-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_4
    const-string p0, "w32ce-"

    goto :goto_0

    :pswitch_5
    const-string p0, "openbsd-"

    goto :goto_0

    :pswitch_6
    const-string p0, "freebsd-"

    goto :goto_0

    :pswitch_7
    const-string p0, "sunos-"

    goto :goto_0

    :pswitch_8
    const-string p0, "win32-"

    goto :goto_0

    :pswitch_9
    const-string p0, "linux-"

    goto :goto_0

    :pswitch_a
    const-string p0, "darwin-"

    goto :goto_0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getOSType()I
    .locals 1

    sget v0, Lcom/sun/jna/Platform;->osType:I

    return v0
.end method

.method public static final hasRuntimeExec()Z
    .locals 2

    invoke-static {}, Lcom/sun/jna/Platform;->isWindowsCE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final is64Bit()Z
    .locals 3

    const-string v0, "com.ibm.vm.bitmode"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.arch.data.model"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "x86-64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "ia64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ppc64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ppc64le"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sparcv9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mips64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mips64el"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "loongarch64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "amd64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "aarch64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method public static final isAIX()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isARM()Z
    .locals 2

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "aarch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isAndroid()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isFreeBSD()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isGNU()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isIntel()Z
    .locals 2

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isLinux()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isLoongArch()Z
    .locals 2

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "loongarch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isMIPS()Z
    .locals 2

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mipsel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mips64el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final isMac()Z
    .locals 1

    sget v0, Lcom/sun/jna/Platform;->osType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNetBSD()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOpenBSD()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPPC()Z
    .locals 2

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "ppc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isSPARC()Z
    .locals 2

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "sparc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSoftFloat()Z
    .locals 4

    const-class v0, Lcom/sun/jna/Platform;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/exe"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/ELFAnalyser;->analyse(Ljava/lang/String;)Lcom/sun/jna/ELFAnalyser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/ELFAnalyser;->isArmHardFloat()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "SecurityException while analysing \'/proc/self/exe\' or the target binary."

    :goto_1
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to read \'/proc/self/exe\' or the target binary."

    goto :goto_1

    :cond_0
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static final isSolaris()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isWindows()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isWindowsCE()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isX11()Z
    .locals 1

    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final iskFreeBSD()Z
    .locals 2

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
