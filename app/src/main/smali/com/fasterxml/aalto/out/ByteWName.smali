.class public final Lcom/fasterxml/aalto/out/ByteWName;
.super Lcom/fasterxml/aalto/out/WName;
.source "SourceFile"


# instance fields
.field final _bytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/aalto/out/WName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/fasterxml/aalto/out/ByteWName;->_bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/WName;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/fasterxml/aalto/out/ByteWName;->_bytes:[B

    return-void
.end method


# virtual methods
.method public appendBytes([BI)I
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteWName;->_bytes:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public appendChars([CI)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Internal error: appendChars() should never be called"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serializedLength()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteWName;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public writeBytes(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteWName;->_bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeChars(Ljava/io/Writer;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal error: writeChars() should never be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
