.class public Lio/milton/common/BufferingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private bufOut:Ljava/io/BufferedOutputStream;

.field private closed:Z

.field private fout:Ljava/io/FileOutputStream;

.field private maxMemorySize:I

.field private runnable:Ljava/lang/Runnable;

.field private size:J

.field private tempFile:Ljava/io/File;

.field private tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/common/BufferingOutputStream;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/common/BufferingOutputStream;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    iput p1, p0, Lio/milton/common/BufferingOutputStream;->maxMemorySize:I

    return-void
.end method

.method private checkSize()V
    .locals 4

    sget-object v0, Lio/milton/common/BufferingOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/milton/common/BufferingOutputStream;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/milton/common/BufferingOutputStream;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lio/milton/common/BufferingOutputStream;->maxMemorySize:I

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".buffer"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/milton/common/BufferingOutputStream;->fout:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lio/milton/common/BufferingOutputStream;->fout:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lio/milton/common/BufferingOutputStream;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/common/BufferingOutputStream;->closed:Z

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :goto_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public deleteTempFileIfExists()V
    .locals 3

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->fout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :cond_1
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/milton/common/BufferingOutputStream;->log:Lorg/slf4j/Logger;

    const-string v1, "temporary file was not deleted. Was close called on the inputstream? Will attempt to delete"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/milton/common/BufferingOutputStream;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Still couldnt delete temporary file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->fout:Ljava/io/FileOutputStream;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    iget-boolean v0, p0, Lio/milton/common/BufferingOutputStream;->closed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lio/milton/common/FileDeletingInputStream;

    iget-object v1, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/milton/common/FileDeletingInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lio/milton/common/BufferingOutputStream;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this output stream is not yet closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    :goto_0
    invoke-direct {p0}, Lio/milton/common/BufferingOutputStream;->checkSize()V

    return-void
.end method

.method public write([B)V
    .locals 4

    .line 2
    iget-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lio/milton/common/BufferingOutputStream;->checkSize()V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 3
    iget-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/milton/common/BufferingOutputStream;->size:J

    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->tempMemoryBuffer:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/milton/common/BufferingOutputStream;->bufOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    :goto_0
    invoke-direct {p0}, Lio/milton/common/BufferingOutputStream;->checkSize()V

    return-void
.end method
