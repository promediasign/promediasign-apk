.class public Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFile"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final fstream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not delete temporary file: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
