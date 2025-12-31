.class public abstract Lsk/mimac/slideshow/SampleImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/SampleImageHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/SampleImageHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static addSampleImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lsk/mimac/slideshow/SampleImageHelper;->LOG:Lorg/slf4j/Logger;

    .line 2
    .line 3
    const-string v1, "Adding sample images"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    :goto_0
    const/4 v2, 0x5

    .line 30
    if-gt v1, v2, :cond_2

    .line 31
    .line 32
    const-string v2, "sample-image-"

    .line 33
    .line 34
    const-string v3, ".webp"

    .line 35
    .line 36
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    :try_start_0
    const-class v4, Lsk/mimac/slideshow/SampleImageHelper;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "sample-data/"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 75
    .line 76
    .line 77
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 79
    .line 80
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-static {v2, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :catch_0
    move-exception p0

    .line 96
    goto :goto_4

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_2
    move-exception v3

    .line 105
    :try_start_6
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    :goto_2
    if-eqz v2, :cond_0

    .line 110
    .line 111
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catchall_3
    move-exception v2

    .line 116
    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_0
    :goto_3
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 120
    :goto_4
    sget-object v2, Lsk/mimac/slideshow/SampleImageHelper;->LOG:Lorg/slf4j/Logger;

    .line 121
    .line 122
    const-string v3, "Can\'t copy sample image file"

    .line 123
    .line 124
    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :cond_1
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    return-object p0
.end method
