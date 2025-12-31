.class Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncryptedPackageWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V

    return-void
.end method


# virtual methods
.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Can\'t delete temporary encryption file: "

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object p1

    const/16 v2, 0x8

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$100(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([B)V

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->close()V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$300()Lorg/apache/poi/util/POILogger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
