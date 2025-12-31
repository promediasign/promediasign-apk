.class public Lorg/h2/mvstore/MVStoreTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVStoreTool$GenericDataType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compact(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p0

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore$Builder;->compress()Lorg/h2/mvstore/MVStore$Builder;

    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/h2/mvstore/MVStoreTool;->compact(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/MVStore;)V

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->close()V

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->close()V

    return-void
.end method

.method public static compact(Ljava/lang/String;Z)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tempFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {v0, p0}, Lorg/h2/store/fs/FileUtils;->moveAtomicReplace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".newFile"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static compact(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/MVStore;)V
    .locals 5

    .line 3
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "chunk."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "map."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "name."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "root."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v2}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    new-instance v3, Lorg/h2/mvstore/MVStoreTool$GenericDataType;

    invoke-direct {v3}, Lorg/h2/mvstore/MVStoreTool$GenericDataType;-><init>()V

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap$Builder;->keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v2

    new-instance v3, Lorg/h2/mvstore/MVStoreTool$GenericDataType;

    invoke-direct {v3}, Lorg/h2/mvstore/MVStoreTool$GenericDataType;-><init>()V

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object v3

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVMap;->copyFrom(Lorg/h2/mvstore/MVMap;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static compactCleanUp(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ".tempFile"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, ".newFile"

    .line 17
    .line 18
    invoke-static {p0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, p0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/Writer;Z)V
    .locals 50

    .line 1
    move-object/from16 v1, p0

    const/16 v2, 0x1000

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    new-instance v8, Ljava/io/PrintWriter;

    const/4 v9, 0x1

    move-object/from16 v10, p1

    invoke-direct {v8, v10, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v13, 0x400

    div-long/2addr v10, v13

    div-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v1, v11, v7

    aput-object v12, v11, v9

    aput-object v10, v11, v6

    const-string v10, "File %s, %d bytes, %d MB\n"

    invoke-virtual {v8, v10, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    const-string v12, "r"

    invoke-virtual {v1, v12}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const-wide/16 v16, 0x0

    move-wide/from16 p0, v16

    move-wide/from16 v3, p0

    move-wide/from16 v20, v3

    :goto_0
    const-string v11, "map %x: %d bytes, %d%%%n"

    const-string v5, "%n%0"

    cmp-long v24, v3, v12

    if-gez v24, :cond_19

    :try_start_2
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1, v3, v4, v15}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/16 v9, 0x48

    if-ne v2, v9, :cond_1

    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    sget-object v9, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%0"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x fileHeader %s%n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v9, v11, v7

    const/4 v9, 0x1

    aput-object v2, v11, v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v8, v5, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v2, 0x1000

    int-to-long v6, v2

    add-long/2addr v3, v6

    :goto_1
    const/16 v2, 0x1000

    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    move-object v2, v0

    move-object v11, v1

    goto/16 :goto_29

    :catch_0
    move-exception v0

    :goto_4
    move-object v2, v0

    move-object v11, v1

    goto/16 :goto_27

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_1
    const/16 v6, 0x63

    if-eq v2, v6, :cond_2

    const/16 v2, 0x1000

    :goto_5
    int-to-long v5, v2

    add-long/2addr v3, v5

    goto :goto_2

    :cond_2
    const/16 v2, 0x1000

    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :try_start_7
    invoke-static {v15, v3, v4}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    iget v7, v6, Lorg/h2/mvstore/Chunk;->len:I

    if-gtz v7, :cond_3

    goto :goto_5

    :cond_3
    mul-int/lit16 v7, v7, 0x1000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x chunkHeader %s%n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6}, Lorg/h2/mvstore/Chunk;->toString()Ljava/lang/String;

    move-result-object v27
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-wide/from16 v28, v12

    const/4 v9, 0x2

    :try_start_9
    new-array v12, v9, [Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    const/4 v13, 0x0

    :try_start_a
    aput-object v5, v12, v13

    const/4 v5, 0x1

    aput-object v27, v12, v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    :try_start_b
    invoke-virtual {v8, v2, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v3, v4, v2}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    invoke-virtual {v15}, Ljava/nio/Buffer;->position()I

    move-result v5

    int-to-long v12, v7

    add-long/2addr v3, v12

    iget v6, v6, Lorg/h2/mvstore/Chunk;->pageCount:I

    int-to-long v12, v6

    move-object v7, v10

    move-wide/from16 v9, v20

    add-long v20, v9, v12

    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-wide/from16 v30, v3

    move v12, v5

    move v13, v6

    const/4 v9, 0x0

    move-wide/from16 v5, p0

    :goto_6
    const-string v3, "+%0"

    if-lez v13, :cond_17

    :try_start_c
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v32

    move/from16 p0, v9

    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v33
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/16 v27, 0x2

    and-int/lit8 v34, v33, 0x2

    move-object/from16 v35, v15

    move/from16 v15, p0

    const/16 v25, 0x1

    if-eqz v34, :cond_4

    const/16 v34, 0x1

    goto :goto_7

    :cond_4
    const/16 v34, 0x0

    :goto_7
    and-int/lit8 v36, v33, 0x1

    if-eqz v36, :cond_5

    const/16 v36, 0x1

    goto :goto_8

    :cond_5
    const/16 v36, 0x0

    :goto_8
    if-eqz p2, :cond_9

    move-object/from16 v37, v1

    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x %s, map %x, %d entries, %d bytes, maxLen %x%n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v38, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v36, :cond_6

    const-string v39, "node"

    :goto_9
    move/from16 v40, v14

    move-object/from16 v14, v39

    goto :goto_e

    :catchall_2
    move-exception v0

    :goto_a
    move-object v2, v0

    :goto_b
    move-object/from16 v11, v37

    goto/16 :goto_29

    :catch_2
    move-exception v0

    :goto_c
    move-object v2, v0

    :goto_d
    move-object/from16 v11, v37

    goto/16 :goto_27

    :cond_6
    const-string v39, "leaf"

    goto :goto_9

    :goto_e
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v34, :cond_7

    const-string v14, " compressed"

    goto :goto_f

    :cond_7
    const-string v14, ""

    :goto_f
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v36, :cond_8

    const/16 v25, 0x1

    add-int/lit8 v39, v9, 0x1

    goto :goto_10

    :cond_8
    move/from16 v39, v9

    :goto_10
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v42, v2

    const/4 v2, 0x0

    invoke-static {v2, v2, v4, v2}, Lorg/h2/mvstore/DataUtils;->getPagePos(IIII)J

    move-result-wide v43

    invoke-static/range {v43 .. v44}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move/from16 p0, v9

    const/4 v2, 0x6

    :try_start_f
    new-array v9, v2, [Ljava/lang/Object;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v2, 0x0

    :try_start_10
    aput-object v3, v9, v2

    const/4 v2, 0x1

    aput-object v11, v9, v2

    const/4 v2, 0x2

    aput-object v14, v9, v2

    const/4 v3, 0x3

    aput-object v39, v9, v3

    const/4 v3, 0x4

    aput-object v41, v9, v3

    const/4 v3, 0x5

    aput-object v43, v9, v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v8, v1, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_11
    move-object v2, v1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    :goto_12
    move-object v2, v1

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_c

    :cond_9
    move-object/from16 v37, v1

    move-object/from16 v42, v2

    move/from16 p0, v9

    move-object/from16 v38, v11

    move/from16 v40, v14

    :goto_13
    add-int/2addr v12, v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_a

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_a
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_b

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_b
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    move-object/from16 p1, v3

    int-to-long v2, v4

    add-long v43, v43, v2

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v11, p1

    invoke-virtual {v7, v11, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v1, v15, v4

    add-long/2addr v5, v2

    add-int/lit8 v13, v13, -0x1

    if-eqz v36, :cond_d

    const/4 v2, 0x1

    add-int/lit8 v3, p0, 0x1

    new-array v4, v3, [J

    const/4 v11, 0x0

    move/from16 v14, p0

    :goto_14
    if-gt v11, v14, :cond_c

    invoke-virtual/range {v42 .. v42}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v43

    aput-wide v43, v4, v11

    add-int/2addr v11, v2

    goto :goto_14

    :cond_c
    new-array v2, v3, [J

    const/4 v3, 0x0

    :goto_15
    if-gt v3, v14, :cond_e

    invoke-static/range {v42 .. v42}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v43

    aput-wide v43, v2, v3

    const/4 v11, 0x1

    add-int/2addr v3, v11

    goto :goto_15

    :cond_d
    move/from16 v14, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_e
    new-array v3, v14, [Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const-string v11, "x%n"

    if-nez v32, :cond_15

    if-eqz p2, :cond_15

    if-eqz v34, :cond_10

    const/4 v15, 0x6

    and-int/lit8 v9, v33, 0x6

    if-eq v9, v15, :cond_f

    const/4 v9, 0x1

    goto :goto_16

    :cond_f
    const/4 v9, 0x0

    :goto_16
    :try_start_12
    invoke-static {v9}, Lorg/h2/mvstore/MVStoreTool;->getCompressor(Z)Lorg/h2/compress/Compressor;

    move-result-object v43

    invoke-static/range {v42 .. v42}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v9

    invoke-virtual/range {v42 .. v42}, Ljava/nio/Buffer;->position()I

    move-result v19

    sub-int v46, v12, v19

    invoke-static/range {v46 .. v46}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v15

    move/from16 p0, v1

    move-object/from16 v1, v42

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int v49, v46, v9

    invoke-static/range {v49 .. v49}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v47

    const/16 v48, 0x0

    const/16 v45, 0x0

    move-object/from16 v44, v15

    invoke-interface/range {v43 .. v49}, Lorg/h2/compress/Compressor;->expand([BII[BII)V

    goto :goto_17

    :cond_10
    move/from16 p0, v1

    move-object/from16 v1, v42

    move-object v9, v1

    :goto_17
    const/4 v15, 0x0

    :goto_18
    if-ge v15, v14, :cond_11

    move-wide/from16 v32, v5

    sget-object v5, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {v5, v9}, Lorg/h2/mvstore/type/StringDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v15

    const/4 v5, 0x1

    add-int/2addr v15, v5

    move-wide/from16 v5, v32

    goto :goto_18

    :cond_11
    move-wide/from16 v32, v5

    if-eqz v36, :cond_13

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v14, :cond_12

    aget-wide v41, v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    %d children < %s @ chunk %x +%0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v40

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-wide v39, v2, v5

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aget-object v34, v3, v5

    invoke-static/range {v41 .. v42}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v41 .. v42}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move/from16 p1, v12

    move/from16 v40, v13

    const/4 v12, 0x4

    :try_start_13
    new-array v13, v12, [Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    const/4 v12, 0x0

    :try_start_14
    aput-object v9, v13, v12

    const/4 v9, 0x1

    aput-object v34, v13, v9

    const/4 v12, 0x2

    aput-object v36, v13, v12

    const/16 v23, 0x3

    aput-object v39, v13, v23
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    invoke-virtual {v8, v6, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/2addr v5, v9

    move/from16 v12, p1

    move/from16 v13, v40

    move/from16 v40, v15

    goto :goto_19

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :cond_12
    move/from16 p1, v12

    move/from16 v15, v40

    move/from16 v40, v13

    aget-wide v3, v4, v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    %d children >= %s @ chunk %x +%0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-wide v13, v2, v14

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const/4 v13, 0x4

    :try_start_16
    new-array v4, v13, [Ljava/lang/Object;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const/4 v9, 0x0

    :try_start_17
    aput-object v2, v4, v9

    const/4 v2, 0x1

    const/16 v18, 0x0

    aput-object v18, v4, v2

    const/4 v2, 0x2

    aput-object v6, v4, v2

    const/4 v2, 0x3

    aput-object v3, v4, v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    invoke-virtual {v8, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_1d

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :cond_13
    move/from16 p1, v12

    move/from16 v15, v40

    const/16 v18, 0x0

    move/from16 v40, v13

    const/4 v13, 0x4

    new-array v2, v14, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v14, :cond_14

    sget-object v5, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {v5, v9}, Lorg/h2/mvstore/type/StringDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_1a

    :cond_14
    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v14, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_1b

    :cond_15
    move/from16 p0, v1

    move-wide/from16 v32, v5

    move/from16 p1, v12

    move/from16 v15, v40

    move-object/from16 v1, v42

    const/16 v18, 0x0

    move/from16 v40, v13

    const/4 v13, 0x4

    if-eqz v36, :cond_16

    if-eqz p2, :cond_16

    const/4 v3, 0x0

    :goto_1c
    if-gt v3, v14, :cond_16

    aget-wide v41, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    %d children @ chunk %x +%0"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-wide v43, v2, v3

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v41 .. v42}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v41 .. v42}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    const/4 v6, 0x3

    :try_start_19
    new-array v13, v6, [Ljava/lang/Object;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    const/4 v6, 0x0

    :try_start_1a
    aput-object v9, v13, v6

    const/4 v6, 0x1

    aput-object v12, v13, v6

    const/4 v9, 0x2

    aput-object v22, v13, v9
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :try_start_1b
    invoke-virtual {v8, v5, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/2addr v3, v6

    const/4 v13, 0x4

    goto :goto_1c

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :cond_16
    :goto_1d
    move/from16 v9, p0

    move/from16 v12, p1

    move-object v2, v1

    move v14, v15

    move-wide/from16 v5, v32

    move-object/from16 v15, v35

    move-object/from16 v1, v37

    move-object/from16 v11, v38

    move/from16 v13, v40

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v37, v1

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v37, v1

    goto/16 :goto_c

    :catch_9
    move-object/from16 v37, v1

    move-object v1, v2

    move-object/from16 v38, v11

    move v2, v14

    move-object/from16 v35, v15

    const/4 v11, 0x6

    const/16 v18, 0x0

    move v15, v9

    const-string v4, "ERROR illegal position %d%n"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    const/4 v13, 0x1

    :try_start_1c
    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v14, v13
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :try_start_1d
    invoke-virtual {v8, v4, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1e
    const/4 v4, 0x1

    goto :goto_1f

    :catchall_9
    move-exception v0

    goto/16 :goto_a

    :catch_a
    move-exception v0

    goto/16 :goto_c

    :cond_17
    move-object/from16 v37, v1

    move-object v1, v2

    move-object/from16 v38, v11

    move v2, v14

    move-object/from16 v35, v15

    const/4 v11, 0x6

    const/16 v18, 0x0

    move v15, v9

    goto :goto_1e

    :goto_1f
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v10, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    div-int/2addr v14, v12

    invoke-virtual {v10, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    const/4 v9, 0x3

    :try_start_1e
    new-array v11, v9, [Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    const/4 v9, 0x0

    :try_start_1f
    aput-object v13, v11, v9

    const/4 v9, 0x1

    aput-object v15, v11, v9

    const/4 v9, 0x2

    aput-object v14, v11, v9
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    move-object/from16 v13, v38

    :try_start_20
    invoke-virtual {v8, v13, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v38, v13

    const/4 v11, 0x6

    goto :goto_20

    :catchall_a
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_b
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :cond_18
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v4
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    const/16 v10, 0x80

    sub-int/2addr v4, v10

    :try_start_21
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x chunkFooter %s%n"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sget-object v14, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v1, v10, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    const/4 v9, 0x2

    :try_start_22
    new-array v10, v9, [Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    const/4 v9, 0x0

    :try_start_23
    aput-object v11, v10, v9

    const/4 v9, 0x1

    aput-object v1, v10, v9
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :try_start_24
    invoke-virtual {v8, v3, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto :goto_23

    :goto_21
    move-object v1, v0

    goto/16 :goto_11

    :goto_22
    move-object v1, v0

    goto/16 :goto_12

    :catchall_b
    move-exception v0

    goto :goto_21

    :catch_c
    move-exception v0

    goto :goto_22

    :catch_d
    :try_start_25
    const-string v1, "ERROR illegal footer position %d%n"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    const/4 v4, 0x1

    :try_start_26
    new-array v9, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v9, v4
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    :try_start_27
    invoke-virtual {v8, v1, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_23
    move v14, v2

    move-wide/from16 p0, v5

    move-object v10, v7

    move-wide/from16 v12, v28

    move-wide/from16 v3, v30

    move-object/from16 v15, v35

    move-object/from16 v1, v37

    goto/16 :goto_1

    :catchall_c
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_c

    :goto_24
    move-object v1, v0

    goto/16 :goto_11

    :goto_25
    move-object v1, v0

    goto/16 :goto_12

    :catchall_d
    move-exception v0

    move-object/from16 v37, v1

    goto :goto_24

    :catch_f
    move-exception v0

    move-object/from16 v37, v1

    goto :goto_25

    :catchall_e
    move-exception v0

    move-object/from16 v37, v1

    goto/16 :goto_a

    :catch_10
    move-exception v0

    move-object/from16 v37, v1

    goto/16 :goto_c

    :catch_11
    move-object/from16 v37, v1

    move-object v7, v10

    move-wide/from16 v28, v12

    move v2, v14

    move-object/from16 v35, v15

    move-wide/from16 v9, v20

    const/16 v1, 0x1000

    const/16 v18, 0x0

    int-to-long v5, v1

    add-long/2addr v3, v5

    move-object/from16 v1, v37

    const/16 v2, 0x1000

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    move-object v10, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_19
    move-object/from16 v37, v1

    move-object v7, v10

    move-wide/from16 v28, v12

    move v2, v14

    move-wide/from16 v9, v20

    move-object v13, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x eof%n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_2
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    const/4 v3, 0x1

    :try_start_28
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_14
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    :try_start_29
    invoke-virtual {v8, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "\n"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-string v5, "page size total: %d bytes, page count: %d, average page size: %d bytes\n"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-wide/from16 v10, p0

    div-long v3, v10, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    const/4 v4, 0x3

    :try_start_2a
    new-array v14, v4, [Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_4
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    const/4 v4, 0x0

    :try_start_2b
    aput-object v6, v14, v4

    const/4 v4, 0x1

    aput-object v9, v14, v4

    const/4 v4, 0x2

    aput-object v3, v14, v4
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_13
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    :try_start_2c
    invoke-virtual {v8, v5, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v7, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v10, 0x64

    mul-long v5, v5, v10

    div-long/2addr v5, v1

    long-to-int v6, v5

    invoke-virtual {v7, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    const/4 v10, 0x3

    :try_start_2d
    new-array v11, v10, [Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_4
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    const/4 v12, 0x0

    :try_start_2e
    aput-object v4, v11, v12

    const/4 v4, 0x1

    aput-object v5, v11, v4

    const/4 v5, 0x2

    aput-object v6, v11, v5
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_12
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    :try_start_2f
    invoke-virtual {v8, v13, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_2
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    goto :goto_26

    :catchall_f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_12
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :cond_1a
    :try_start_30
    invoke-virtual/range {v37 .. v37}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_16

    goto :goto_28

    :catchall_10
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_13
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :catchall_11
    move-exception v0

    goto/16 :goto_a

    :catch_14
    move-exception v0

    goto/16 :goto_c

    :catchall_12
    move-exception v0

    const/16 v18, 0x0

    move-object v2, v0

    move-object/from16 v11, v18

    goto :goto_29

    :catch_15
    move-exception v0

    const/16 v18, 0x0

    move-object v2, v0

    move-object/from16 v11, v18

    :goto_27
    :try_start_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    if-eqz v11, :cond_1b

    :try_start_32
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_16

    :catch_16
    :cond_1b
    :goto_28
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_13
    move-exception v0

    move-object v2, v0

    :goto_29
    if-eqz v11, :cond_1c

    :try_start_33
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_17

    :catch_17
    :cond_1c
    throw v2
.end method

.method public static dump(Ljava/lang/String;Z)V
    .locals 2

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0, p1}, Lorg/h2/mvstore/MVStoreTool;->dump(Ljava/lang/String;Ljava/io/Writer;Z)V

    return-void
.end method

.method private static formatTimestamp(JJ)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/sql/Timestamp;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x13

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, " (+"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sub-long/2addr p0, p2

    .line 24
    const-wide/16 p2, 0x3e8

    .line 25
    .line 26
    div-long/2addr p0, p2

    .line 27
    const-string p2, " s)"

    .line 28
    .line 29
    invoke-static {v0, p0, p1, p2}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static getCompressor(Z)Lorg/h2/compress/Compressor;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lorg/h2/compress/CompressLZF;

    invoke-direct {p0}, Lorg/h2/compress/CompressLZF;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/h2/compress/CompressDeflate;

    invoke-direct {p0}, Lorg/h2/compress/CompressDeflate;-><init>()V

    :goto_0
    return-object p0
.end method

.method private static getPercent(JJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/16 p0, 0x64

    return p0

    :cond_1
    const-wide/16 v0, 0x62

    mul-long p0, p0, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    div-long/2addr p0, p2

    add-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static info(Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "File not found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v6}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v6, v0}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object v7

    invoke-virtual {v6}, Lorg/h2/mvstore/MVStore;->getStoreHeader()Ljava/util/Map;

    move-result-object v8

    const-string v9, "created"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v7}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v2

    move-wide/from16 v17, v4

    move-wide v1, v10

    move-wide v3, v1

    move-wide v13, v3

    move-wide/from16 v19, v13

    :goto_0
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Ljava/lang/String;

    const-string v10, "chunk."

    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object v5

    iget v10, v5, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v10, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v5, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v10, v10, 0x1000

    int-to-long v10, v10

    add-long/2addr v13, v10

    iget-wide v10, v5, Lorg/h2/mvstore/Chunk;->maxLen:J

    add-long/2addr v1, v10

    move-wide/from16 v23, v1

    iget-wide v0, v5, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v3, v0

    const-wide/16 v21, 0x0

    cmp-long v2, v0, v21

    move-wide/from16 v0, v19

    if-lez v2, :cond_1

    add-long v19, v0, v10

    :cond_1
    move-wide/from16 v1, v23

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 p1, v6

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object/from16 p1, v6

    move-object/from16 v7, v16

    goto/16 :goto_8

    :cond_2
    move-wide/from16 v10, v19

    :goto_1
    move-object/from16 v0, p0

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_3
    move-wide/from16 v10, v19

    const-string v0, "Created: %s\n"

    invoke-static {v8, v9, v8, v9}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v15, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v15

    move-object/from16 v7, v16

    :try_start_2
    invoke-virtual {v7, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Last modified: %s\n"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 p1, v6

    :try_start_3
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, v8, v9}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v15, v6

    invoke-virtual {v7, v0, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "File length: %d\n"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide/from16 v19, v8

    const/4 v15, 0x1

    new-array v8, v15, [Ljava/lang/Object;

    aput-object v5, v8, v6

    invoke-virtual {v7, v0, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "The last chunk is not listed\n"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk length: %d\n"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v6

    invoke-virtual {v7, v0, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk count: %d\n"

    invoke-virtual {v12}, Ljava/util/TreeMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v8, v6

    invoke-virtual {v7, v0, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Used space: %d%%\n"

    move-wide/from16 v5, v17

    invoke-static {v13, v14, v5, v6}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v8, v6

    invoke-virtual {v7, v0, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk fill rate: %d%%\n"

    const/16 v5, 0x64

    const-wide/16 v8, 0x0

    cmp-long v6, v1, v8

    if-nez v6, :cond_4

    const/16 v1, 0x64

    goto :goto_2

    :cond_4
    invoke-static {v3, v4, v1, v2}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    invoke-virtual {v7, v0, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk fill rate excluding empty chunks: %d%%\n"

    const-wide/16 v1, 0x0

    cmp-long v6, v10, v1

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v3, v4, v10, v11}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v5

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-virtual {v7, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v2, "\n"

    if-eqz v1, :cond_7

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    iget-wide v3, v1, Lorg/h2/mvstore/Chunk;->time:J

    add-long v8, v19, v3

    const-string v3, "  Chunk %d: %s, %d%% used, %d blocks"

    iget v4, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v5, v19

    invoke-static {v8, v9, v5, v6}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget-wide v11, v1, Lorg/h2/mvstore/Chunk;->maxLen:J

    invoke-static {v9, v10, v11, v12}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v1, Lorg/h2/mvstore/Chunk;->len:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v4, 0x1

    aput-object v8, v11, v4

    const/4 v4, 0x2

    aput-object v9, v11, v4

    const/4 v4, 0x3

    aput-object v10, v11, v4

    invoke-virtual {v7, v3, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v3, v1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-nez v10, :cond_6

    const-string v3, ", unused: %s"

    iget-wide v10, v1, Lorg/h2/mvstore/Chunk;->unused:J

    add-long/2addr v10, v5

    invoke-static {v10, v11, v5, v6}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v7, v3, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_6
    const/4 v4, 0x1

    goto :goto_5

    :goto_6
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-wide/from16 v19, v5

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/MVStore;->close()V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    const/4 v0, 0x0

    return-object v0

    :catch_2
    move-exception v0

    :goto_7
    move-object/from16 p1, v6

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v7, v2

    goto :goto_7

    :goto_8
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/MVStore;->close()V

    return-object v0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/MVStore;->close()V

    throw v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_6

    const-string v2, "-dump"

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v1

    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v4, v3}, Lorg/h2/mvstore/MVStoreTool;->dump(Ljava/lang/String;Ljava/io/Writer;Z)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "-info"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v1

    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v4}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "-compact"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2, v0}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v2, "-compress"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2, v3}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v2, "-rollback"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    add-int/lit8 v1, v1, 0x2

    aget-object v4, p0, v1

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/io/PrintWriter;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v4, v5, v6}, Lorg/h2/mvstore/MVStoreTool;->rollback(Ljava/lang/String;JLjava/io/Writer;)J

    goto :goto_1

    :cond_4
    const-string v2, "-repair"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/h2/mvstore/MVStoreTool;->repair(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/2addr v1, v3

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static repair(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, ".temp"

    .line 2
    .line 3
    new-instance v1, Ljava/io/PrintWriter;

    .line 4
    .line 5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/h2/mvstore/MVStoreTool$1;

    .line 11
    .line 12
    invoke-direct {v2}, Lorg/h2/mvstore/MVStoreTool$1;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide v3, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    move-wide v5, v3

    .line 21
    :goto_0
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    cmp-long v9, v5, v7

    .line 24
    .line 25
    if-ltz v9, :cond_2

    .line 26
    .line 27
    cmp-long v7, v5, v3

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    const-string v7, "Trying latest version"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v7, "Trying version "

    .line 35
    .line 36
    invoke-static {v7, v5, v6}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    :goto_1
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 44
    .line 45
    .line 46
    new-instance v7, Ljava/io/PrintWriter;

    .line 47
    .line 48
    invoke-direct {v7, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v5, v6, v7}, Lorg/h2/mvstore/MVStoreTool;->rollback(Ljava/lang/String;JLjava/io/Writer;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    new-instance v8, Ljava/io/PrintWriter;

    .line 71
    .line 72
    invoke-direct {v8, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v8}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-nez v7, :cond_1

    .line 80
    .line 81
    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v9, ".back"

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v8}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const/4 v9, 0x1

    .line 107
    invoke-virtual {v7, v8, v9}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    .line 108
    .line 109
    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v7}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v7, v8, v9}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    .line 134
    .line 135
    .line 136
    const-string v7, "Success"

    .line 137
    .line 138
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catch_0
    move-exception v7

    .line 143
    goto :goto_2

    .line 144
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v9, "    ... failed: "

    .line 150
    .line 151
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v9, "Fail: "

    .line 168
    .line 169
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 187
    .line 188
    .line 189
    :goto_3
    const-wide/16 v7, 0x1

    .line 190
    .line 191
    sub-long/2addr v5, v7

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_2
    :goto_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public static rollback(Ljava/lang/String;JLjava/io/Writer;)J
    .locals 18

    move-object/from16 v0, p0

    const-string v1, ".temp"

    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-direct {v2, v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "File not found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-wide v4

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v7}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/store/fs/FilePath;->delete()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    const-string v1, "rw"

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v10, 0x0

    :goto_0
    cmp-long v12, v10, v7

    if-gez v12, :cond_7

    :try_start_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v6, v10, v11, v9}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v13, 0x48

    if-ne v12, v13, :cond_1

    :try_start_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v9, v10, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    int-to-long v12, v0

    add-long/2addr v10, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    move-object v3, v6

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :goto_3
    move-object v3, v6

    goto/16 :goto_8

    :cond_1
    const/16 v13, 0x63

    if-eq v12, v13, :cond_2

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-static {v9, v10, v11}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget v13, v12, Lorg/h2/mvstore/Chunk;->len:I

    if-gtz v13, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit16 v13, v13, 0x1000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-static {v6, v10, v11, v14}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 p0, v1

    :try_start_7
    iget-wide v0, v12, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long v15, v0, p1

    if-lez v15, :cond_4

    int-to-long v0, v13

    add-long/2addr v10, v0

    const/16 v0, 0x1000

    move-object/from16 v1, p0

    goto :goto_0

    :cond_4
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v1, p0

    :try_start_8
    invoke-virtual {v1, v14, v10, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    if-eqz v3, :cond_6

    iget-wide v14, v12, Lorg/h2/mvstore/Chunk;->version:J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide/from16 v16, v4

    :try_start_9
    iget-wide v4, v3, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long v0, v14, v4

    if-lez v0, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v4, v16

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v3, v6

    move-wide/from16 v4, v16

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_4
    move-wide/from16 v16, v4

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v4

    :goto_5
    iget-wide v3, v12, Lorg/h2/mvstore/Chunk;->version:J

    move-wide v4, v3

    move-object v3, v12

    :goto_6
    int-to-long v12, v13

    add-long/2addr v10, v12

    :goto_7
    const/16 v0, 0x1000

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catch_4
    move-wide/from16 v16, v4

    int-to-long v4, v0

    add-long/2addr v10, v4

    move-wide/from16 v4, v16

    goto :goto_7

    :cond_7
    move-wide/from16 v16, v4

    iget v0, v3, Lorg/h2/mvstore/Chunk;->len:I

    const/16 v4, 0x1000

    mul-int/lit16 v0, v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v3, v3, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v9, 0x1000

    mul-long v3, v3, v9

    invoke-static {v6, v3, v4, v0}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v0, v7, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    move-wide/from16 v4, v16

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v1, v3

    :goto_8
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_8

    :try_start_d
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_9

    :catch_9
    nop

    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    :try_start_e
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :catch_a
    :cond_9
    :goto_a
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    return-wide v4

    :catchall_4
    move-exception v0

    :goto_b
    if-eqz v3, :cond_a

    :try_start_f
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_c

    :catch_b
    nop

    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    :try_start_10
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :catch_c
    :cond_b
    throw v0
.end method
