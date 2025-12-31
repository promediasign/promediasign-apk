.class public Lio/milton/common/RandomFileOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected randomFile:Ljava/io/RandomAccessFile;

.field protected sync:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/milton/common/RandomFileOutputStream;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    iput-boolean p2, p0, Lio/milton/common/RandomFileOutputStream;->sync:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lio/milton/common/RandomFileOutputStream;->sync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-boolean p1, p0, Lio/milton/common/RandomFileOutputStream;->sync:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-boolean p1, p0, Lio/milton/common/RandomFileOutputStream;->sync:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-boolean p1, p0, Lio/milton/common/RandomFileOutputStream;->sync:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/milton/common/RandomFileOutputStream;->randomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    :cond_0
    return-void
.end method
