.class public Lorg/h2/compress/CompressDeflate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/compress/Compressor;


# instance fields
.field private level:I

.field private strategy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/compress/CompressDeflate;->level:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/compress/CompressDeflate;->strategy:I

    return-void
.end method


# virtual methods
.method public compress([BI[BI)I
    .locals 3

    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/h2/compress/CompressDeflate;->level:I

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iget v1, p0, Lorg/h2/compress/CompressDeflate;->strategy:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setStrategy(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    array-length v2, p3

    sub-int/2addr v2, p4

    invoke-virtual {v0, p3, p4, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    if-nez v2, :cond_0

    iput v1, p0, Lorg/h2/compress/CompressDeflate;->strategy:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/compress/CompressDeflate;->level:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/compress/CompressDeflate;->compress([BI[BI)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    add-int/2addr p4, v2

    return p4
.end method

.method public expand([BII[BII)V
    .locals 1

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    :try_start_0
    invoke-virtual {v0, p4, p5, p6}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p6, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void

    :cond_0
    :try_start_1
    new-instance p2, Ljava/util/zip/DataFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const p3, 0x15ff8

    invoke-static {p3, p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getAlgorithm()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "l"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "strategy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/h2/compress/CompressDeflate;->strategy:I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/h2/compress/CompressDeflate;->level:I

    :cond_4
    :goto_2
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/h2/compress/CompressDeflate;->level:I

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    iget v2, p0, Lorg/h2/compress/CompressDeflate;->strategy:I

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->setStrategy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    const v0, 0x15ff6

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
