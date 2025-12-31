.class public final Lio/netty/util/internal/NativeLibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELETE_NATIVE_LIB_AFTER_LOADING:Z

.field private static final NATIVE_RESOURCE_HOME:Ljava/lang/String; = "META-INF/native/"

.field private static final TRY_TO_PATCH_SHADED_ID:Z

.field private static final UNIQUE_ID_BYTES:[B

.field private static final WORKDIR:Ljava/io/File;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    const-string v1, "io.netty.native.workdir"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Dio.netty.native.workdir: "

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    sget-object v1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->tmpdir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (io.netty.tmpdir)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    const-string v0, "io.netty.native.deleteLibAfterLoading"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "-Dio.netty.native.deleteLibAfterLoading: {}"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "io.netty.native.tryPatchShadedId"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Dio.netty.native.tryPatchShadedId: {}"

    invoke-interface {v2, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculatePackagePrefix()Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x21

    .line 8
    .line 9
    const/16 v2, 0x2e

    .line 10
    .line 11
    const-string v3, "io!netty!util!internal!NativeLibraryLoader"

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sub-int/2addr v2, v1

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    .line 39
    .line 40
    const-string v3, "Could not find prefix added to "

    .line 41
    .line 42
    const-string v4, " to get "

    .line 43
    .line 44
    const-string v5, ". When shading, only adding a package prefix is supported"

    .line 45
    .line 46
    invoke-static {v3, v1, v4, v0, v5}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v2, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2
.end method

.method private static classToByteArray(Ljava/lang/Class;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x400

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v3}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, ".jnilib"

    .line 4
    .line 5
    invoke-static {}, Lio/netty/util/internal/NativeLibraryLoader;->calculatePackagePrefix()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/16 v4, 0x5f

    .line 10
    .line 11
    const/16 v5, 0x2e

    .line 12
    .line 13
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {p1, v4, v1}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v7

    .line 31
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    sget-object v8, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 35
    .line 36
    invoke-interface {v8}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    sget-object v8, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 43
    .line 44
    const/4 v9, 0x3

    .line 45
    new-array v9, v9, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v4, v9, v1

    .line 48
    .line 49
    sget-object v10, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 50
    .line 51
    aput-object v10, v9, v0

    .line 52
    .line 53
    const/4 v10, 0x2

    .line 54
    aput-object v7, v9, v10

    .line 55
    .line 56
    const-string v7, "{} cannot be loaded from java.library.path, now trying export to -Dio.netty.native.workdir: {}"

    .line 57
    .line 58
    invoke-interface {v8, v7, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {v4}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-string v8, "META-INF/native/"

    .line 66
    .line 67
    invoke-static {v8, v7}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    invoke-static {v8}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    :goto_0
    const/4 v10, 0x0

    .line 83
    if-nez v9, :cond_6

    .line 84
    .line 85
    :try_start_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_5

    .line 90
    .line 91
    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v8
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    const-string v9, "META-INF/native/lib"

    .line 96
    .line 97
    if-eqz v8, :cond_2

    .line 98
    .line 99
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v8, ".dynlib"

    .line 108
    .line 109
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_1

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    move-object v2, v10

    .line 119
    move-object v7, v2

    .line 120
    goto/16 :goto_d

    .line 121
    .line 122
    :catch_0
    move-exception p0

    .line 123
    move-object v2, v10

    .line 124
    move-object v7, v2

    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :catch_1
    move-exception p0

    .line 128
    move-object v5, v10

    .line 129
    move-object v7, v5

    .line 130
    goto/16 :goto_b

    .line 131
    .line 132
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :goto_1
    if-nez p1, :cond_3

    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    :goto_2
    move-object v9, v8

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    goto :goto_2

    .line 160
    :goto_3
    if-eqz v9, :cond_4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 164
    .line 165
    invoke-direct {p0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p0, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_5
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 173
    .line 174
    invoke-direct {p0, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p0, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_6
    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    sget-object v7, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 194
    .line 195
    invoke-static {v5, v2, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 196
    .line 197
    .line 198
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :try_start_3
    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 200
    .line 201
    .line 202
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 203
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    .line 204
    .line 205
    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 206
    .line 207
    .line 208
    :try_start_5
    invoke-static {v3}, Lio/netty/util/internal/NativeLibraryLoader;->shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_7

    .line 213
    .line 214
    invoke-static {v5, v7, p0, v4}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_9

    .line 218
    :catchall_2
    move-exception p0

    .line 219
    :goto_5
    move-object v10, v5

    .line 220
    goto/16 :goto_d

    .line 221
    .line 222
    :catch_2
    move-exception p0

    .line 223
    :goto_6
    move-object v10, v5

    .line 224
    goto :goto_a

    .line 225
    :catch_3
    move-exception p0

    .line 226
    :goto_7
    move-object v10, v2

    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    :cond_7
    const/16 p0, 0x2000

    .line 230
    .line 231
    new-array p0, p0, [B

    .line 232
    .line 233
    :goto_8
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-lez v3, :cond_8

    .line 238
    .line 239
    invoke-virtual {v7, p0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_8
    :goto_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 244
    .line 245
    .line 246
    invoke-static {v7}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    .line 248
    .line 249
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {p1, p0, v0}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 254
    .line 255
    .line 256
    invoke-static {v5}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v10}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    .line 261
    .line 262
    sget-boolean p0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    .line 263
    .line 264
    if-eqz p0, :cond_9

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-nez p0, :cond_a

    .line 271
    .line 272
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 273
    .line 274
    .line 275
    :cond_a
    return-void

    .line 276
    :catchall_3
    move-exception p0

    .line 277
    move-object v7, v10

    .line 278
    goto :goto_5

    .line 279
    :catch_4
    move-exception p0

    .line 280
    move-object v7, v10

    .line 281
    goto :goto_6

    .line 282
    :catch_5
    move-exception p0

    .line 283
    move-object v7, v10

    .line 284
    goto :goto_7

    .line 285
    :catchall_4
    move-exception p0

    .line 286
    move-object v7, v10

    .line 287
    goto :goto_d

    .line 288
    :catch_6
    move-exception p0

    .line 289
    move-object v7, v10

    .line 290
    goto :goto_a

    .line 291
    :catch_7
    move-exception p0

    .line 292
    move-object v5, v10

    .line 293
    move-object v7, v5

    .line 294
    goto :goto_7

    .line 295
    :goto_a
    :try_start_7
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    .line 296
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v1, "could not load a native library: "

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-direct {p1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 318
    .line 319
    .line 320
    invoke-static {p1, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 321
    .line 322
    .line 323
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 324
    :catchall_5
    move-exception p0

    .line 325
    goto :goto_d

    .line 326
    :goto_b
    if-eqz v10, :cond_b

    .line 327
    .line 328
    :try_start_8
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_b

    .line 333
    .line 334
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_b

    .line 339
    .line 340
    invoke-static {v10}, Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;->access$000(Ljava/io/File;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-nez p1, :cond_b

    .line 345
    .line 346
    sget-object p1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 347
    .line 348
    const-string v0, "{} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{}=[path] to set native working directory separately."

    .line 349
    .line 350
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const-string v2, "io.netty.native.workdir"

    .line 355
    .line 356
    invoke-interface {p1, v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 357
    .line 358
    .line 359
    goto :goto_c

    .line 360
    :catchall_6
    move-exception p1

    .line 361
    :try_start_9
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    sget-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 365
    .line 366
    const-string v1, "Error checking if {} is on a file store mounted with noexec"

    .line 367
    .line 368
    invoke-interface {v0, v1, v10, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto :goto_c

    .line 372
    :catchall_7
    move-exception p0

    .line 373
    move-object v2, v10

    .line 374
    goto/16 :goto_5

    .line 375
    .line 376
    :cond_b
    :goto_c
    invoke-static {p0, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 377
    .line 378
    .line 379
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 380
    :goto_d
    invoke-static {v10}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v7}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 384
    .line 385
    .line 386
    if-eqz v2, :cond_d

    .line 387
    .line 388
    sget-boolean p1, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    .line 389
    .line 390
    if-eqz p1, :cond_c

    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-nez p1, :cond_d

    .line 397
    .line 398
    :cond_c
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 399
    .line 400
    .line 401
    :cond_d
    throw p0
.end method

.method public static varargs loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    invoke-static {v3, p0}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Unable to load the library \'{}\', trying next name..."

    invoke-interface {v5, v6, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load any of the given libraries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    throw p0
.end method

.method private static loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "Unable to load the library \'{}\', trying other loading mechanism."

    const-string v1, "Successfully loaded the library {}"

    :try_start_0
    const-class v2, Lio/netty/util/internal/NativeLibraryUtil;

    invoke-static {p0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V

    sget-object p0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_1
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :goto_1
    invoke-interface {v2, v0, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :goto_2
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    goto :goto_1

    :goto_3
    invoke-static {p1, p2}, Lio/netty/util/internal/NativeLibraryUtil;->loadLibrary(Ljava/lang/String;Z)V

    sget-object p2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p2, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :goto_4
    invoke-static {p1, p0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/NativeLibraryLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader$1;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/UnsatisfiedLinkError;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/UnsatisfiedLinkError;

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_1
    return-void
.end method

.method public static patchShadedLibraryId(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x2000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {p0, p2, p3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    .line 1
    invoke-static {v2, v0, v2, v1}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    array-length p3, p0

    invoke-virtual {p1, p0, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    return p2
.end method

.method private static patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 9
    const/4 v0, 0x1

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    array-length v4, p0

    sub-int/2addr v4, v3

    array-length v6, v1

    if-lt v4, v6, :cond_3

    move v6, v3

    const/4 v4, 0x0

    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v1, v4

    if-eq v6, v4, :cond_0

    goto :goto_2

    :cond_0
    array-length v4, v1

    if-ne v8, v4, :cond_1

    goto :goto_3

    :cond_1
    move v6, v7

    move v4, v8

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_3
    if-ne v3, v5, :cond_4

    sget-object p0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p1, "Was not able to find the ID of the shaded native library {}, can\'t adjust it."

    invoke-interface {p0, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_4
    const/4 v4, 0x0

    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_5

    add-int v5, v3, v4

    sget-object v6, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-byte v6, v6, v7

    aput-byte v6, p0, v5

    add-int/2addr v4, v0

    goto :goto_4

    :cond_5
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/String;

    array-length v1, v1

    sget-object v6, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v2

    aput-object p1, p0, v0

    const/4 p1, 0x2

    aput-object v5, p0, p1

    const-string p1, "Found the ID of the shaded native library {}. Replacing ID part {} with {}"

    invoke-interface {v4, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v0
.end method

.method private static shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p1}, Lio/netty/util/internal/NativeLibraryLoader;->classToByteArray(Ljava/lang/Class;)[B

    move-result-object v1

    new-instance v2, Lio/netty/util/internal/NativeLibraryLoader$2;

    invoke-direct {v2, p0, p1, v1}, Lio/netty/util/internal/NativeLibraryLoader$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :goto_1
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :goto_2
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_0
    throw v0
.end method
