.class public Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ole10Extractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object p1

    const-string v2, "binary/octet-stream"

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/Ole10NativeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
