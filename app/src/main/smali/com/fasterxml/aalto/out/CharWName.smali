.class final Lcom/fasterxml/aalto/out/CharWName;
.super Lcom/fasterxml/aalto/out/WName;
.source "SourceFile"


# instance fields
.field final _chars:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/WName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/out/CharWName;->_chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/aalto/out/WName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    add-int v3, v2, v1

    new-array v3, v3, [C

    iput-object v3, p0, Lcom/fasterxml/aalto/out/CharWName;->_chars:[C

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    const/16 p1, 0x3a

    aput-char p1, v3, v0

    invoke-virtual {p2, v4, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method


# virtual methods
.method public appendBytes([BI)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Internal error: appendBytes() should never be called"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendChars([CI)I
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharWName;->_chars:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public final serializedLength()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharWName;->_chars:[C

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharWName;->_chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    return-object v0
.end method

.method public writeBytes(Ljava/io/OutputStream;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal error: writeBytes() should never be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeChars(Ljava/io/Writer;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharWName;->_chars:[C

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    return-void
.end method
