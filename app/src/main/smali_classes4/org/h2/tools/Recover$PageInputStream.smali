.class Lorg/h2/tools/Recover$PageInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/Recover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageInputStream"
.end annotation


# instance fields
.field private dataPage:J

.field private final dataPages:Lorg/h2/util/IntArray;

.field private endOfFile:Z

.field private logKey:I

.field private nextTrunkPage:J

.field private final page:Lorg/h2/store/Data;

.field private final pageSize:I

.field private remaining:I

.field private final store:Lorg/h2/store/FileStore;

.field private trunkPage:J

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Lorg/h2/store/DataHandler;Lorg/h2/store/FileStore;IJJI)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/h2/util/IntArray;

    invoke-direct {v0}, Lorg/h2/util/IntArray;-><init>()V

    iput-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    iput-object p1, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    iput-object p3, p0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iput p9, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    iput-wide p5, p0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    iput-wide p7, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    invoke-static {p2, p9}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    return-void
.end method

.method private fillBuffer()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    if-gtz v1, :cond_b

    iget-boolean v1, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v1}, Lorg/h2/util/IntArray;->size()I

    move-result v1

    const-string v2, ":"

    const-string v3, "-- log "

    const-string v4, " got: "

    const-string v5, " expected key: "

    const-string v6, "-- ERROR: checksum mismatch page: "

    const-string v7, " type: "

    const-string v8, "-- log eof "

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_7

    iget-wide v11, v0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-nez v1, :cond_1

    iput-boolean v10, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    :cond_1
    iput-wide v11, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget v15, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    int-to-long v13, v15

    mul-long v11, v11, v13

    invoke-virtual {v1, v11, v12}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v11, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v11}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v11

    iget v12, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-virtual {v1, v11, v9, v12}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    iget-wide v11, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    long-to-int v12, v11

    iget v11, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-static {v1, v12, v11}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v10, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    :cond_2
    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readByte()B

    move-result v1

    iget-object v6, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v6}, Lorg/h2/store/Data;->readShortInt()S

    const/4 v6, 0x7

    if-eq v1, v6, :cond_3

    iget-object v2, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " expected type: 7"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v10, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    :cond_3
    iget-object v6, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v6}, Lorg/h2/store/Data;->readInt()I

    iget-object v6, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v6}, Lorg/h2/store/Data;->readInt()I

    move-result v6

    iget v11, v0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    add-int/2addr v11, v10

    iput v11, v0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    if-eq v6, v11, :cond_4

    iget-object v10, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    .line 1
    invoke-static {v6, v3, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    iget-wide v3, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    :goto_0
    if-ge v9, v1, :cond_0

    iget-object v2, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    iget-wide v3, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    int-to-long v7, v2

    cmp-long v10, v7, v3

    if-nez v10, :cond_6

    iput-wide v5, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    :cond_5
    iget-object v3, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v3, v2}, Lorg/h2/util/IntArray;->add(I)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v1}, Lorg/h2/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v1, v9}, Lorg/h2/util/IntArray;->get(I)I

    move-result v1

    int-to-long v11, v1

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v1, v9}, Lorg/h2/util/IntArray;->remove(I)V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget v13, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    int-to-long v13, v13

    mul-long v13, v13, v11

    invoke-virtual {v1, v13, v14}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v13, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v13}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v13

    iget v14, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-virtual {v1, v13, v9, v14}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readByte()B

    move-result v1

    if-eqz v1, :cond_8

    iget-object v9, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v9}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v9

    long-to-int v13, v11

    iget v14, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-static {v9, v13, v14}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v1, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v10, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    :cond_8
    iget-object v6, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v6}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v6, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v6}, Lorg/h2/store/Data;->readInt()I

    move-result v6

    iget-object v9, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v9}, Lorg/h2/store/Data;->readInt()I

    move-result v9

    iget-object v13, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    .line 3
    invoke-static {v9, v3, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    iget-wide v14, v0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v2, 0x8

    const-string v3, " parent: "

    if-eq v1, v2, :cond_9

    iget-object v2, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " expected type: 8"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v10, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    :cond_9
    iget v2, v0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    if-eq v9, v2, :cond_a

    iget-object v2, v0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v10, v0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    :cond_a
    iget v1, v0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    iget-object v2, v0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    :cond_b
    :goto_1
    return-void
.end method

.method private readBlock([BII)I
    .locals 1

    invoke-direct {p0}, Lorg/h2/tools/Recover$PageInputStream;->fillBuffer()V

    iget-boolean v0, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/Data;->read([BII)V

    iget p1, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    return p3
.end method


# virtual methods
.method public read()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    invoke-virtual {p0, v1}, Lorg/h2/tools/Recover$PageInputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/tools/Recover$PageInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 3
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/tools/Recover$PageInputStream;->readBlock([BII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method
