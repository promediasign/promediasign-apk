.class public Lorg/h2/util/ScriptReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private blockRemark:Z

.field private buffer:[C

.field private bufferEnd:I

.field private bufferPos:I

.field private bufferStart:I

.field private endOfFile:Z

.field private insideRemark:Z

.field private final reader:Ljava/io/Reader;

.field private remarkStart:I

.field private skipRemarks:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    iput-object p1, p0, Lorg/h2/util/ScriptReader;->reader:Ljava/io/Reader;

    const/16 p1, 0x2000

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    return-void
.end method

.method private clearRemark()V
    .locals 4

    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->skipRemarks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v1, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_0
    return-void
.end method

.method private endRemark()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->clearRemark()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/util/ScriptReader;->insideRemark:Z

    return-void
.end method

.method private read()I
    .locals 3

    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->readBuffer()I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    aget-char v0, v1, v0

    return v0
.end method

.method private readBuffer()I
    .locals 7

    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-lez v0, :cond_3

    iget-object v4, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    add-int/lit16 v5, v0, 0x1000

    array-length v6, v4

    if-le v5, v6, :cond_2

    array-length v5, v4

    const v6, 0x3fffffff    # 1.9999999f

    if-ge v5, v6, :cond_1

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [C

    iput-object v5, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v3, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const-string v2, "Error in parsing script, statement size exceeds 1G, first 80 characters of statement looks like: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v5, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    invoke-static {v4, v2, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v2, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    iput v3, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget-object v2, p0, Lorg/h2/util/ScriptReader;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-ne v2, v1, :cond_4

    const/16 v0, -0x400

    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    return v1

    :cond_4
    add-int/2addr v0, v2

    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferEnd:I

    iget-object v0, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readStatementLoop()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    :goto_0
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-gez v0, :cond_1

    iput-boolean v1, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v2, 0x3b

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v3, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    const/16 v2, 0x22

    if-eq v0, v2, :cond_15

    const/16 v2, 0x24

    if-eq v0, v2, :cond_11

    const/16 v3, 0x27

    if-eq v0, v3, :cond_f

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_c

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    const/16 v6, 0x2a

    if-ne v0, v6, :cond_9

    invoke-direct {p0, v1}, Lorg/h2/util/ScriptReader;->startRemark(Z)V

    :cond_5
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_0

    :cond_6
    if-ne v0, v6, :cond_5

    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_7

    :goto_2
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->clearRemark()V

    goto :goto_0

    :cond_7
    if-ne v0, v5, :cond_5

    :cond_8
    :goto_3
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->endRemark()V

    goto :goto_0

    :cond_9
    if-ne v0, v5, :cond_0

    invoke-direct {p0, v4}, Lorg/h2/util/ScriptReader;->startRemark(Z)V

    :cond_a
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_b

    goto :goto_2

    :cond_b
    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_a

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-direct {p0, v4}, Lorg/h2/util/ScriptReader;->startRemark(Z)V

    :cond_d
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_e

    goto :goto_2

    :cond_e
    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_d

    goto :goto_3

    :cond_f
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_10

    goto :goto_4

    :cond_10
    if-ne v0, v3, :cond_f

    :goto_4
    goto :goto_1

    :cond_11
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget v3, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int v3, v1, v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_12

    iget-object v3, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    add-int/lit8 v1, v1, -0x3

    aget-char v1, v3, v1

    const/16 v3, 0x20

    if-gt v1, v3, :cond_0

    :cond_12
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_13

    goto :goto_5

    :cond_13
    if-ne v0, v2, :cond_12

    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_14

    goto :goto_5

    :cond_14
    if-ne v0, v2, :cond_12

    :goto_5
    goto/16 :goto_1

    :cond_15
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_16

    goto :goto_6

    :cond_16
    if-ne v0, v2, :cond_15

    :goto_6
    goto/16 :goto_1
.end method

.method private startRemark(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/util/ScriptReader;->blockRemark:Z

    iget p1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/util/ScriptReader;->insideRemark:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/h2/util/ScriptReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public isBlockRemark()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->blockRemark:Z

    return v0
.end method

.method public isInsideRemark()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->insideRemark:Z

    return v0
.end method

.method public readStatement()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->readStatementLoop()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public setSkipRemarks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/util/ScriptReader;->skipRemarks:Z

    return-void
.end method
