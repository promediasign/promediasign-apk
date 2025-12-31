.class public Lorg/h2/mvstore/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FOOTER_LENGTH:I = 0x80

.field static final MAX_HEADER_LENGTH:I = 0x400

.field public static final MAX_ID:I = 0x3ffffff


# instance fields
.field public block:J

.field public collectPriority:I

.field public final id:I

.field public len:I

.field public mapId:I

.field public maxLen:J

.field public maxLenLive:J

.field public metaRootPos:J

.field public next:J

.field public pageCount:I

.field public pageCountLive:I

.field public time:J

.field public unused:J

.field public version:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/h2/mvstore/Chunk;->id:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;
    .locals 8

    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "chunk"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lorg/h2/mvstore/Chunk;

    invoke-direct {v2, v0}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    const-string v3, "block"

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->block:J

    const-string v3, "len"

    invoke-static {p0, v3, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/h2/mvstore/Chunk;->len:I

    const-string v3, "pages"

    invoke-static {p0, v3, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/h2/mvstore/Chunk;->pageCount:I

    const-string v6, "livePages"

    invoke-static {p0, v6, v3}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    const-string v3, "map"

    invoke-static {p0, v3, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lorg/h2/mvstore/Chunk;->mapId:I

    const-string v1, "max"

    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->maxLen:J

    const-string v1, "liveMax"

    invoke-static {p0, v1, v6, v7}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-string v1, "root"

    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    const-string v1, "time"

    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->time:J

    const-string v1, "unused"

    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->unused:J

    const-string v1, "version"

    int-to-long v6, v0

    invoke-static {p0, v1, v6, v7}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/h2/mvstore/Chunk;->version:J

    const-string v0, "next"

    invoke-static {p0, v0, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/h2/mvstore/Chunk;->next:J

    return-object v2
.end method

.method public static getMetaKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chunk."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    const/16 v4, 0x400

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    :goto_0
    const-string v6, "File corrupt reading chunk at position {0}"

    const/4 v7, 0x6

    if-ge v5, v3, :cond_1

    :try_start_0
    aget-byte v8, v4, v5

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p0, Ljava/lang/String;

    sget-object v2, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {p0, v4, v0, v5, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/2addr v5, v1

    goto :goto_0

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    aput-object p0, p2, v1

    invoke-static {v7, v6, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {v7, v6, p1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunk"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "block"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lorg/h2/mvstore/Chunk;->len:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "len"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    iget-wide v3, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "liveMax"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Lorg/h2/mvstore/Chunk;->pageCount:I

    iget v2, p0, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    if-eq v1, v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "livePages"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lorg/h2/mvstore/Chunk;->mapId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "map"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "max"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->next:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "next"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget v1, p0, Lorg/h2/mvstore/Chunk;->pageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pages"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "root"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->unused:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "unused"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/mvstore/Chunk;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/mvstore/Chunk;

    iget p1, p1, Lorg/h2/mvstore/Chunk;->id:I

    iget v0, p0, Lorg/h2/mvstore/Chunk;->id:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFillRate()I
    .locals 6

    iget-wide v0, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/16 v0, 0x64

    return v0

    :cond_1
    const-wide/16 v4, 0x62

    mul-long v0, v0, v4

    div-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getFooterBytes()[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunk"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "block"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fletcher"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/Chunk;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V
    .locals 7

    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    add-int/lit8 v4, p2, -0x1

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x3

    const-string v0, "Chunk metadata too long"

    invoke-static {p2, v0, p1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
