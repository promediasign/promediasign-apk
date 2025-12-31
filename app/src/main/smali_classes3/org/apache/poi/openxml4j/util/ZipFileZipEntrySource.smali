.class public Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# instance fields
.field private zipArchive:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip File is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Zip File is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->zipArchive:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
