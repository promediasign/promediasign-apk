.class public final Lorg/apache/poi/util/TempFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;
    }
.end annotation


# static fields
.field public static final JAVA_IO_TMPDIR:Ljava/lang/String; = "java.io.tmpdir"

.field private static strategy:Lorg/apache/poi/util/TempFileCreationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;

    invoke-direct {v0}, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;-><init>()V

    sput-object v0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    return-void
.end method

.method public static createTempDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    invoke-interface {v0, p0}, Lorg/apache/poi/util/TempFileCreationStrategy;->createTempDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/util/TempFileCreationStrategy;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static setTempFileCreationStrategy(Lorg/apache/poi/util/TempFileCreationStrategy;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "strategy == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
