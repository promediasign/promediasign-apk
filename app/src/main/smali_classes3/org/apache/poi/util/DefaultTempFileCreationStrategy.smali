.class public Lorg/apache/poi/util/DefaultTempFileCreationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/TempFileCreationStrategy;


# static fields
.field public static final KEEP_FILES:Ljava/lang/String; = "poi.keep.tmp.files"

.field private static final random:Ljava/security/SecureRandom;


# instance fields
.field private dir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    return-void
.end method

.method private createPOIFilesDirectory()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "poifiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Systems temporary directory not defined - set the -Djava.io.tmpdir jvm property!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createTempDirectory(Ljava/io/File;)V

    return-void
.end method

.method private createTempDirectory(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create temporary directory \'"

    const-string v2, "\'"

    .line 6
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create temporary directory. \'"

    const-string v2, "\' exists but is not a directory."

    .line 8
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createTempDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createPOIFilesDirectory()V

    sget-object v0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    .line 1
    invoke-static {p1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createTempDirectory(Ljava/io/File;)V

    const-string p1, "poi.keep.tmp.files"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-object v2
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createPOIFilesDirectory()V

    iget-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const-string p2, "poi.keep.tmp.files"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-object p1
.end method
