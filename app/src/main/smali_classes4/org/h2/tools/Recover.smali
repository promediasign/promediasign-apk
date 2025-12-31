.class public Lorg/h2/tools/Recover;
.super Lorg/h2/util/Tool;
.source "SourceFile"

# interfaces
.implements Lorg/h2/store/DataHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/tools/Recover$PageInputStream;,
        Lorg/h2/tools/Recover$Stats;
    }
.end annotation


# instance fields
.field private columnTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private databaseName:Ljava/lang/String;

.field private lobMaps:Z

.field private objectIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private parents:[I

.field private recordLength:I

.field private remove:Z

.field private schema:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/MetaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private stat:Lorg/h2/tools/Recover$Stats;

.field private storageId:I

.field private storageName:Ljava/lang/String;

.field private store:Lorg/h2/store/FileStore;

.field private tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trace:Z

.field private transactionLog:Z

.field private valueId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method private checkParent(Ljava/io/PrintWriter;J[II)V
    .locals 6

    aget p4, p4, p5

    const-string v0, "]: "

    const-string v1, "] child["

    const-string v2, "-- ERROR ["

    if-ltz p4, :cond_1

    iget-object v3, p0, Lorg/h2/tools/Recover;->parents:[I

    array-length v4, v3

    if-lt p4, v4, :cond_0

    goto :goto_1

    :cond_0
    aget v3, v3, p4

    int-to-long v3, v3

    cmp-long v5, v3, p2

    if-eqz v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " parent: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/h2/tools/Recover;->parents:[I

    aget p2, p2, p4

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= page count: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/h2/tools/Recover;->parents:[I

    array-length p2, p2

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static closeSilently(Lorg/h2/store/FileStore;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->closeSilently()V

    :cond_0
    return-void
.end method

.method private createRecord(Ljava/io/PrintWriter;Lorg/h2/store/Data;I)[Lorg/h2/value/Value;
    .locals 1

    iput p3, p0, Lorg/h2/tools/Recover;->recordLength:I

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    const-string p3, "columnCount<0"

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    return-object v0

    :cond_0
    :try_start_0
    new-array p1, p3, [Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p3, "out of memory"

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private createTemporaryTable(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    iget v1, p0, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    iget v1, p0, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/tools/Recover;->recordLength:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v2, 0x43

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/tools/Recover;->columnTypeMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "VARCHAR"

    :cond_0
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_2
    return-void
.end method

.method private dumpLob(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string v1, ".comp"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, ""

    .line 11
    .line 12
    :goto_0
    const-string v2, ".txt"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    :try_start_0
    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 26
    :try_start_1
    const-string v6, "r"

    .line 27
    .line 28
    invoke-static {v2, p1, v6}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    :try_start_2
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->init()V

    .line 33
    .line 34
    .line 35
    new-instance v6, Lorg/h2/store/FileStoreInputStream;

    .line 36
    .line 37
    invoke-direct {v6, p1, p0, p2, v1}, Lorg/h2/store/FileStoreInputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_3
    invoke-static {v6, v5}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    invoke-static {v5}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v6}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :catchall_0
    :goto_1
    move-object v2, v5

    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-object v6, v2

    .line 57
    goto :goto_1

    .line 58
    :catchall_2
    move-object p1, v2

    .line 59
    move-object v6, p1

    .line 60
    goto :goto_1

    .line 61
    :catchall_3
    move-object p1, v2

    .line 62
    move-object v6, p1

    .line 63
    :goto_2
    invoke-static {v2}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v6}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    .line 70
    .line 71
    .line 72
    move-wide v1, v3

    .line 73
    :goto_3
    cmp-long p1, v1, v3

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    :try_start_4
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-direct {p0, v0, p1}, Lorg/h2/tools/Recover;->traceError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_4
    return-void
.end method

.method private dumpLobMaps(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "lobData"

    invoke-virtual {v0, v3}, Lorg/h2/mvstore/MVStore;->hasMap(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/h2/tools/Recover;->lobMaps:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v3

    new-instance v4, Lorg/h2/mvstore/StreamStore;

    invoke-direct {v4, v3}, Lorg/h2/mvstore/StreamStore;-><init>(Ljava/util/Map;)V

    const-string v5, "lobMap"

    invoke-virtual {v0, v5}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v5

    const-string v0, "-- LOB"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_BLOCKS(LOB_ID BIGINT, SEQ INT, DATA BINARY, PRIMARY KEY(LOB_ID, SEQ));"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    aget-object v8, v8, v7

    check-cast v8, [B

    invoke-virtual {v4, v8}, Lorg/h2/mvstore/StreamStore;->get([B)Ljava/io/InputStream;

    move-result-object v8

    const/16 v11, 0x2000

    new-array v12, v11, [B

    const/4 v13, 0x0

    :goto_1
    :try_start_0
    invoke-static {v8, v12, v11}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v14

    invoke-static {v12, v14}, Lorg/h2/util/StringUtils;->convertBytesToHex([BI)Ljava/lang/String;

    move-result-object v15

    if-lez v14, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INSERT INTO INFORMATION_SCHEMA.LOB_BLOCKS VALUES("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", \'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\');"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v7, 0x2000

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_2
    if-eq v14, v7, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/16 v11, 0x2000

    goto :goto_1

    :goto_3
    invoke-direct {v1, v2, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :goto_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "-- lobMap.size: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "-- lobData.size: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v0, "-- lobMap"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/mvstore/MVMap;->keyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "--     "

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v5, v4}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, [B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/h2/mvstore/StreamStore;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v0, "-- lobData"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/mvstore/MVMap;->keyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " len "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    return-void
.end method

.method private dumpMVStoreFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "-- MVStore"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_BLOB FOR \""

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ".readBlob\";"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_CLOB FOR \""

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ".readClob\";"

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_BLOB_DB FOR \""

    .line 75
    .line 76
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, ".readBlobDb\";"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_CLOB_DB FOR \""

    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, ".readClobDb\";"

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_BLOB_MAP FOR \""

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v4, ".readBlobMap\";"

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_CLOB_MAP FOR \""

    .line 165
    .line 166
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v4, ".readClobMap\";"

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Recover;->resetSchema()V

    .line 193
    .line 194
    .line 195
    const/4 v3, 0x6

    .line 196
    const/4 v4, 0x0

    .line 197
    invoke-static {v0, v3, v4}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-direct {v1, v5}, Lorg/h2/tools/Recover;->setDatabaseName(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v5, Lorg/h2/mvstore/MVStore$Builder;

    .line 205
    .line 206
    invoke-direct {v5}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v0}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-direct {v1, v2, v5}, Lorg/h2/tools/Recover;->dumpLobMaps(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V

    .line 222
    .line 223
    .line 224
    const-string v0, "-- Meta"

    .line 225
    .line 226
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v2, v5}, Lorg/h2/tools/Recover;->dumpMeta(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V

    .line 230
    .line 231
    .line 232
    const-string v0, "-- Tables"

    .line 233
    .line 234
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v6, Lorg/h2/mvstore/db/TransactionStore;

    .line 238
    .line 239
    invoke-direct {v6, v5}, Lorg/h2/mvstore/db/TransactionStore;-><init>(Lorg/h2/mvstore/MVStore;)V

    .line 240
    .line 241
    .line 242
    :try_start_0
    invoke-virtual {v6}, Lorg/h2/mvstore/db/TransactionStore;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    move-object v7, v0

    .line 248
    invoke-direct {v1, v2, v7}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Ljava/lang/String;

    .line 270
    .line 271
    const-string v8, "table."

    .line 272
    .line 273
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-nez v8, :cond_1

    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    new-instance v9, Lorg/h2/mvstore/db/ValueDataType;

    .line 285
    .line 286
    const/4 v10, 0x0

    .line 287
    invoke-direct {v9, v10, v1, v10}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 288
    .line 289
    .line 290
    new-instance v11, Lorg/h2/mvstore/db/ValueDataType;

    .line 291
    .line 292
    invoke-direct {v11, v10, v1, v10}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    invoke-virtual {v12, v0, v9, v11}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-virtual {v9, v10}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    const/4 v0, 0x0

    .line 308
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    if-eqz v11, :cond_0

    .line 313
    .line 314
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    check-cast v11, Lorg/h2/value/Value;

    .line 319
    .line 320
    invoke-virtual {v9, v11}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    check-cast v11, Lorg/h2/value/ValueArray;

    .line 325
    .line 326
    invoke-virtual {v11}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    array-length v12, v11

    .line 331
    iput v12, v1, Lorg/h2/tools/Recover;->recordLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    .line 333
    const-string v12, "."

    .line 334
    .line 335
    const/4 v13, 0x1

    .line 336
    if-nez v0, :cond_3

    .line 337
    .line 338
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-direct {v1, v0}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    iput v4, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 346
    .line 347
    :goto_3
    iget v0, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 348
    .line 349
    iget v14, v1, Lorg/h2/tools/Recover;->recordLength:I

    .line 350
    .line 351
    if-ge v0, v14, :cond_2

    .line 352
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    iget-object v14, v1, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget v14, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 367
    .line 368
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget v14, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 376
    .line 377
    aget-object v14, v11, v14

    .line 378
    .line 379
    invoke-direct {v1, v0, v14}, Lorg/h2/tools/Recover;->getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    iget v0, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 383
    .line 384
    add-int/2addr v0, v13

    .line 385
    iput v0, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 386
    .line 387
    goto :goto_3

    .line 388
    :catchall_1
    move-exception v0

    .line 389
    goto/16 :goto_8

    .line 390
    .line 391
    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/h2/tools/Recover;->createTemporaryTable(Ljava/io/PrintWriter;)V

    .line 392
    .line 393
    .line 394
    const/4 v14, 0x1

    .line 395
    goto :goto_4

    .line 396
    :cond_3
    move v14, v0

    .line 397
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v15, "INSERT INTO O_"

    .line 403
    .line 404
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v15, " VALUES("

    .line 411
    .line 412
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    iput v4, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 416
    .line 417
    :goto_5
    iget v15, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 418
    .line 419
    iget v3, v1, Lorg/h2/tools/Recover;->recordLength:I

    .line 420
    .line 421
    if-ge v15, v3, :cond_5

    .line 422
    .line 423
    if-lez v15, :cond_4

    .line 424
    .line 425
    const-string v3, ", "

    .line 426
    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    iget-object v15, v1, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    iget v15, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 444
    .line 445
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    iget v15, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 453
    .line 454
    aget-object v15, v11, v15

    .line 455
    .line 456
    invoke-direct {v1, v3, v15}, Lorg/h2/tools/Recover;->getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    iget v3, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 464
    .line 465
    add-int/2addr v3, v13

    .line 466
    iput v3, v1, Lorg/h2/tools/Recover;->valueId:I

    .line 467
    .line 468
    const/4 v3, 0x6

    .line 469
    goto :goto_5

    .line 470
    :cond_5
    const-string v3, ");"

    .line 471
    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget v0, v1, Lorg/h2/tools/Recover;->storageId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    .line 484
    if-nez v0, :cond_6

    .line 485
    .line 486
    :try_start_3
    new-instance v0, Lorg/h2/result/SimpleRow;

    .line 487
    .line 488
    invoke-direct {v0, v11}, Lorg/h2/result/SimpleRow;-><init>([Lorg/h2/value/Value;)V

    .line 489
    .line 490
    .line 491
    new-instance v3, Lorg/h2/engine/MetaRecord;

    .line 492
    .line 493
    invoke-direct {v3, v0}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/result/SearchRow;)V

    .line 494
    .line 495
    .line 496
    iget-object v0, v1, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3}, Lorg/h2/engine/MetaRecord;->getObjectType()I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-nez v0, :cond_6

    .line 506
    .line 507
    const/4 v0, 0x3

    .line 508
    aget-object v0, v11, v0

    .line 509
    .line 510
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-static {v0}, Lorg/h2/tools/Recover;->extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    iget-object v11, v1, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    .line 519
    .line 520
    invoke-virtual {v3}, Lorg/h2/engine/MetaRecord;->getId()I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-virtual {v11, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 529
    .line 530
    .line 531
    goto :goto_6

    .line 532
    :catchall_2
    move-exception v0

    .line 533
    :try_start_4
    invoke-direct {v1, v2, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 534
    .line 535
    .line 536
    :cond_6
    :goto_6
    move v0, v14

    .line 537
    const/4 v3, 0x6

    .line 538
    goto/16 :goto_2

    .line 539
    .line 540
    :cond_7
    invoke-direct/range {p0 .. p1}, Lorg/h2/tools/Recover;->writeSchema(Ljava/io/PrintWriter;)V

    .line 541
    .line 542
    .line 543
    const-string v0, "DROP ALIAS READ_BLOB_MAP;"

    .line 544
    .line 545
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    const-string v0, "DROP ALIAS READ_CLOB_MAP;"

    .line 549
    .line 550
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    const-string v0, "DROP TABLE IF EXISTS INFORMATION_SCHEMA.LOB_BLOCKS;"

    .line 554
    .line 555
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 556
    .line 557
    .line 558
    :goto_7
    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore;->close()V

    .line 559
    .line 560
    .line 561
    goto :goto_9

    .line 562
    :goto_8
    :try_start_5
    invoke-direct {v1, v2, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 563
    .line 564
    .line 565
    goto :goto_7

    .line 566
    :goto_9
    return-void

    .line 567
    :catchall_3
    move-exception v0

    .line 568
    move-object v2, v0

    .line 569
    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore;->close()V

    .line 570
    .line 571
    .line 572
    throw v2
.end method

.method private static dumpMeta(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V
    .locals 3

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpPage(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v5, p3

    const-string v0, "-- ERROR page "

    const-string v1, "checksum mismatch type: "

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    and-int/lit8 v4, v2, 0x10

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v2, v2, -0x11

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v7

    long-to-int v8, v5

    iget v11, v9, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v7, v8, v11}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v7

    invoke-direct {v9, v10, v1, v7}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, " table: "

    const-string v7, " index: "

    const-string v8, " entries: "

    const-string v11, "parent: "

    const-string v12, "(last) "

    const-string v13, ""

    const-string v14, "-- page "

    packed-switch v2, :pswitch_data_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " unknown type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": log data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": log trunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": free list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    const-string v13, "(last)"

    :cond_2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget v1, v0, Lorg/h2/tools/Recover$Stats;->free:I

    invoke-direct/range {p0 .. p6}, Lorg/h2/tools/Recover;->dumpPageFreeList(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/h2/tools/Recover$Stats;->free:I

    goto/16 :goto_9

    :pswitch_3
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    invoke-direct {v9, v1}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ": b-tree node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v12, v13

    :goto_3
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    xor-int/lit8 v0, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->dumpPageBtreeNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JZ)V

    goto/16 :goto_9

    :pswitch_4
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    invoke-direct {v9, v1}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ": b-tree leaf "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move-object v12, v13

    :goto_4
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, v9, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v0, :cond_9

    xor-int/lit8 v0, v4, 0x1

    move-object/from16 v7, p2

    invoke-direct {v9, v10, v7, v1, v0}, Lorg/h2/tools/Recover;->dumpPageBtreeLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;IZ)V

    goto/16 :goto_9

    :pswitch_5
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": data overflow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move-object v12, v13

    :goto_5
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v7, p2

    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v15, v0, v2

    add-int/2addr v15, v3

    aput v15, v0, v2

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ": data node "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move-object v12, v13

    :goto_6
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rowCount: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->dumpPageDataNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JI)V

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v7, p2

    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v15, v0, v2

    add-int/2addr v15, v3

    aput v15, v0, v2

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ": data leaf "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move-object v12, v13

    :goto_7
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " columns: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v0, v3

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    move v7, v15

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lorg/h2/tools/Recover;->dumpPageDataLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;ZJII)V

    goto :goto_9

    :cond_8
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_8
    invoke-direct {v9, v10, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    :cond_9
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpPageBtreeLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;IZ)V
    .locals 7

    new-array v0, p3, [I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    invoke-virtual {p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->length()I

    move-result v3

    sub-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--   empty: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    if-ge v2, p3, :cond_2

    aget v1, v0, v2

    invoke-virtual {p2, v1}, Lorg/h2/store/Data;->setPos(I)V

    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v3

    if-eqz p4, :cond_1

    invoke-static {v3, v4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-- ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " data: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, p1, v1, v3}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private dumpPageBtreeNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JZ)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v10

    add-int/lit8 v0, v10, 0x1

    new-array v11, v0, [I

    new-array v12, v10, [I

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    aput v0, v11, v10

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object v5, v11

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    const v0, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v10, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    aput v1, v11, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object v5, v11

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v1, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lorg/h2/tools/Recover;->trace:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--   empty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const-string v0, "] child: "

    const-string v1, "-- ["

    if-ge v13, v10, :cond_3

    aget v2, v12, v13

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lorg/h2/store/Data;->setPos(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v4

    if-eqz p5, :cond_2

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v2

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :goto_2
    invoke-static {v13, v1, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    aget v1, v11, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exception "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v8, v0, v1}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3
    :cond_3
    invoke-static {v10, v1, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    aget v1, v11, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpPageDataLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;ZJII)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p7

    new-array v10, v9, [J

    new-array v11, v9, [I

    if-nez p3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--   next: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget v2, v6, Lorg/h2/tools/Recover;->pageSize:I

    const/4 v14, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v4

    aput-wide v4, v10, v3

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v6, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v3, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    iget v15, v6, Lorg/h2/tools/Recover;->pageSize:I

    sub-int/2addr v15, v2

    int-to-long v12, v15

    add-long/2addr v4, v12

    iput-wide v4, v3, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v6, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v3, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->length()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v4, v12

    iput-wide v4, v3, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    iget-object v3, v6, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    int-to-long v12, v2

    add-long/2addr v4, v12

    iput-wide v4, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    iget-boolean v3, v6, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--   empty: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-nez p3, :cond_6

    iget v2, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v6, v2}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v13

    iget v2, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v8, v2}, Lorg/h2/store/Data;->setPos(I)V

    move-wide/from16 v2, p4

    move-wide v4, v0

    :goto_2
    long-to-int v0, v4

    filled-new-array {v0}, [I

    move-result-object v15

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 p3, v13

    move-wide v12, v4

    move-object v4, v15

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    invoke-direct {v6, v12, v13}, Lorg/h2/tools/Recover;->seek(J)V

    iget-object v0, v6, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    iget v2, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v0, v1, v14, v2}, Lorg/h2/store/FileStore;->readFully([BII)V

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->reset()V

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->readShortInt()S

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->readInt()I

    const/16 v1, 0x13

    const-string v2, " size: "

    const-string v3, " type: "

    const-string v4, "-- chain: "

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->length()I

    move-result v2

    invoke-virtual {v8, v0, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    int-to-long v14, v1

    const-wide/16 v16, 0x0

    cmp-long v1, v14, v16

    if-nez v1, :cond_4

    const-string v0, "next:0"

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    goto :goto_3

    :cond_4
    iget v1, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->length()I

    move-result v18

    sub-int v1, v1, v18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " next: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->length()I

    move-result v2

    invoke-virtual {v8, v0, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    move-wide v2, v12

    move-wide v4, v14

    const/4 v14, 0x0

    move-object/from16 v13, p3

    goto/16 :goto_2

    :cond_5
    const-string v1, "type: "

    .line 1
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual/range {p3 .. p3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_d

    aget-wide v1, v10, v0

    aget v3, v11, v0

    iget-boolean v4, v6, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v4, :cond_7

    const-string v4, "-- ["

    const-string v5, "] storage: "

    .line 3
    invoke-static {v0, v4, v5}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    iget v5, v6, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " off: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v8, v3}, Lorg/h2/store/Data;->setPos(I)V

    move/from16 v1, p6

    invoke-direct {v6, v7, v8, v1}, Lorg/h2/tools/Recover;->createRecord(Ljava/io/PrintWriter;Lorg/h2/store/Data;I)[Lorg/h2/value/Value;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p1}, Lorg/h2/tools/Recover;->createTemporaryTable(Ljava/io/PrintWriter;)V

    invoke-direct {v6, v7, v8, v2}, Lorg/h2/tools/Recover;->writeRow(Ljava/io/PrintWriter;Lorg/h2/store/Data;[Lorg/h2/value/Value;)V

    iget-boolean v4, v6, Lorg/h2/tools/Recover;->remove:Z

    if-eqz v4, :cond_c

    iget v4, v6, Lorg/h2/tools/Recover;->storageId:I

    if-nez v4, :cond_c

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CREATE USER "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v5

    const-string v12, "SALT "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v5, v13, v3}, Lorg/h2/util/Utils;->indexOf([B[BI)I

    move-result v3

    if-ltz v3, :cond_b

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    const/16 v13, 0xc

    invoke-virtual {v2, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "IF NOT EXISTS "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5
    invoke-static {v2, v12, v12}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 6
    :cond_9
    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v2, v5}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object v5

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v12

    invoke-static {v5, v12}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SALT \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' HASH \'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v12

    array-length v13, v5

    const/4 v14, 0x0

    invoke-static {v5, v14, v12, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v12, p4

    invoke-direct {v6, v12, v13}, Lorg/h2/tools/Recover;->seek(J)V

    iget-object v3, v6, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v5

    iget v15, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v3, v5, v14, v15}, Lorg/h2/store/FileStore;->write([BII)V

    iget-boolean v3, v6, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v3, :cond_a

    iget-object v3, v6, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "User: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    const/4 v2, 0x0

    iput-boolean v2, v6, Lorg/h2/tools/Recover;->remove:Z

    goto :goto_5

    :cond_b
    move-wide/from16 v12, p4

    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    move-wide/from16 v12, p4

    const/4 v2, 0x0

    const/4 v4, 0x3

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_d
    return-void
.end method

.method private dumpPageDataNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JI)V
    .locals 10

    .line 1
    add-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    new-array v7, p5, [J

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aput v1, v0, p5

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-wide v3, p3

    .line 16
    move-object v5, v0

    .line 17
    move v6, p5

    .line 18
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    .line 19
    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    :goto_0
    if-ge v9, p5, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    aput v1, v0, v9

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    move-object v2, p1

    .line 33
    move-wide v3, p3

    .line 34
    move-object v5, v0

    .line 35
    move v6, v9

    .line 36
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarLong()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    aput-wide v1, v7, v9

    .line 44
    .line 45
    add-int/lit8 v9, v9, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-boolean p2, p0, Lorg/h2/tools/Recover;->trace:Z

    .line 49
    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_1
    const-string p2, "] child: "

    .line 54
    .line 55
    const-string p3, "-- ["

    .line 56
    .line 57
    if-ge v8, p5, :cond_2

    .line 58
    .line 59
    invoke-static {v8, p3, p2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    aget p3, v0, v8

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p3, " key: "

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    aget-wide p3, v7, v8

    .line 74
    .line 75
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v8, v8, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {p5, p3, p2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    aget p3, v0, p5

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private dumpPageFreeList(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)I
    .locals 15

    move-object/from16 v0, p1

    move-object v1, p0

    iget v2, v1, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v2}, Lorg/h2/store/PageFreeList;->getPagesAddressed(I)I

    move-result v2

    new-instance v3, Lorg/h2/util/BitField;

    invoke-direct {v3}, Lorg/h2/util/BitField;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x8

    if-ge v7, v8, :cond_1

    const/4 v8, 0x1

    shl-int/2addr v8, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_0

    add-int v8, v5, v7

    invoke-virtual {v3, v8}, Lorg/h2/util/BitField;->set(I)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x0

    move-wide/from16 v7, p3

    move-wide v9, v5

    :goto_2
    int-to-long v11, v2

    cmp-long v13, v9, v11

    if-gez v13, :cond_a

    cmp-long v11, v7, p5

    if-gez v11, :cond_a

    cmp-long v11, v9, v5

    if-eqz v11, :cond_5

    const-wide/16 v12, 0x64

    rem-long v12, v7, v12

    cmp-long v14, v12, v5

    if-nez v14, :cond_3

    goto :goto_4

    :cond_3
    const-wide/16 v11, 0x14

    rem-long v11, v7, v11

    cmp-long v13, v11, v5

    if-nez v13, :cond_4

    const-string v11, " - "

    :goto_3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-wide/16 v11, 0xa

    rem-long v11, v7, v11

    cmp-long v13, v11, v5

    if-nez v13, :cond_7

    const/16 v11, 0x20

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_5

    :cond_5
    :goto_4
    if-lez v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "-- "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_7
    :goto_5
    long-to-int v11, v9

    invoke-virtual {v3, v11}, Lorg/h2/util/BitField;->get(I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x31

    goto :goto_6

    :cond_8
    const/16 v12, 0x30

    :goto_6
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v3, v11}, Lorg/h2/util/BitField;->get(I)Z

    move-result v11

    if-nez v11, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    add-long/2addr v7, v11

    goto :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return v4
.end method

.method private dumpPageLogStream(Ljava/io/PrintWriter;IIIJ)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget v1, v11, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v11, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v12

    new-instance v13, Lorg/h2/store/DataReader;

    new-instance v14, Lorg/h2/tools/Recover$PageInputStream;

    iget-object v4, v11, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    move/from16 v1, p3

    int-to-long v6, v1

    move/from16 v1, p4

    int-to-long v8, v1

    iget v10, v11, Lorg/h2/tools/Recover;->pageSize:I

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Lorg/h2/tools/Recover$PageInputStream;-><init>(Ljava/io/PrintWriter;Lorg/h2/store/DataHandler;Lorg/h2/store/FileStore;IJJI)V

    invoke-direct {v13, v14}, Lorg/h2/store/DataReader;-><init>(Ljava/io/InputStream;)V

    const-string v1, "---- Transaction log ----"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Lorg/h2/compress/CompressLZF;

    invoke-direct {v9}, Lorg/h2/compress/CompressLZF;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-gez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v10, " "

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v1, v15, :cond_c

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v5

    iget v2, v11, Lorg/h2/tools/Recover;->pageSize:I

    new-array v8, v2, [B

    if-nez v5, :cond_3

    invoke-virtual {v13, v8, v2}, Lorg/h2/store/DataReader;->readFully([BI)V

    :goto_1
    move-object v15, v8

    goto :goto_2

    :cond_3
    if-ne v5, v15, :cond_4

    goto :goto_1

    :cond_4
    new-array v3, v5, [B

    invoke-virtual {v13, v3, v5}, Lorg/h2/store/DataReader;->readFully([BI)V

    :try_start_0
    iget v7, v11, Lorg/h2/tools/Recover;->pageSize:I

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v2, v9

    move-object v6, v8

    move/from16 v17, v7

    move/from16 v7, v16

    move-object v15, v8

    move/from16 v8, v17

    invoke-virtual/range {v2 .. v8}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    aget-byte v2, v15, v14

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_5

    const/4 v14, 0x1

    :cond_5
    and-int/lit8 v2, v2, -0x11

    const-string v3, ""

    const-string v4, "(last)"

    packed-switch v2, :pswitch_data_0

    const-string v3, "ERROR: unknown type "

    .line 1
    invoke-static {v2, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2
    :pswitch_0
    const-string v2, "log data"

    goto :goto_4

    :pswitch_1
    const-string v2, "log trunk"

    goto :goto_4

    :pswitch_2
    if-eqz v14, :cond_6

    move-object v3, v4

    :cond_6
    const-string v2, "free list "

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :pswitch_3
    if-eqz v14, :cond_7

    move-object v3, v4

    :cond_7
    const-string v2, "b-tree node "

    goto :goto_3

    :pswitch_4
    if-eqz v14, :cond_8

    move-object v3, v4

    :cond_8
    const-string v2, "b-tree leaf "

    goto :goto_3

    :pswitch_5
    if-eqz v14, :cond_9

    move-object v3, v4

    :cond_9
    const-string v2, "data overflow "

    goto :goto_3

    :pswitch_6
    if-eqz v14, :cond_a

    move-object v3, v4

    :cond_a
    const-string v2, "data node "

    goto :goto_3

    :pswitch_7
    if-eqz v14, :cond_b

    move-object v3, v4

    :cond_b
    const-string v2, "data leaf "

    goto :goto_3

    :pswitch_8
    const-string v2, "empty"

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-- undo page "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, v11, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, v15}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v3

    int-to-long v4, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/h2/tools/Recover;->dumpPage(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, ";"

    const-string v7, " table "

    const-string v8, "-- session "

    if-ne v1, v2, :cond_10

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-direct {v11, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    sget-object v2, Lorg/h2/result/RowFactory;->DEFAULT:Lorg/h2/result/RowFactory;

    invoke-static {v2, v13, v12}, Lorg/h2/store/PageLog;->readRow(Lorg/h2/result/RowFactory;Lorg/h2/store/DataReader;Lorg/h2/store/Data;)Lorg/h2/result/Row;

    move-result-object v2

    .line 3
    invoke-static {v1, v8, v7}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget v7, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " + "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, v11, Lorg/h2/tools/Recover;->transactionLog:Z

    if-eqz v1, :cond_0

    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    if-nez v1, :cond_e

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v1

    if-lt v1, v5, :cond_e

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-interface {v2, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/tools/Recover;->extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    iget v3, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v3, Lorg/h2/util/StatementBuilder;

    invoke-direct {v3}, Lorg/h2/util/StatementBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v4, " VALUES("

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_7
    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v1

    if-ge v14, v1, :cond_f

    const-string v1, ", "

    invoke-virtual {v3, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-interface {v2, v14}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_f
    const-string v1, ");"

    invoke-virtual {v3, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_10
    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-direct {v11, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarLong()J

    move-result-wide v2

    .line 5
    invoke-static {v1, v8, v7}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget v4, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, v11, Lorg/h2/tools/Recover;->transactionLog:Z

    if-eqz v1, :cond_0

    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    if-nez v1, :cond_11

    long-to-int v1, v2

    iget-object v2, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_11
    iget-object v4, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE _ROWID_ = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_12
    const/4 v2, 0x7

    if-ne v1, v2, :cond_13

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-direct {v11, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 7
    invoke-static {v1, v8, v7}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget v2, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " truncate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, v11, Lorg/h2/tools/Recover;->transactionLog:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TRUNCATE TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_13
    if-ne v1, v3, :cond_14

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-- commit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_14
    if-ne v1, v5, :cond_15

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-- rollback "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    if-ne v1, v4, :cond_16

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-- prepare commit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_16
    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x8

    if-ne v1, v2, :cond_18

    const-string v1, "-- checkpoint"

    goto/16 :goto_6

    :cond_18
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1a

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-- free"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a
    if-ge v14, v1, :cond_19

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-- ERROR: unknown operation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpPageStore(Ljava/io/PrintWriter;J)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {p0, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    const-wide/16 v0, 0x3

    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    iget v2, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {p0, v2}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lorg/h2/tools/Recover;->seek(J)V

    iget-object v2, p0, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x0

    iget v6, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v2, v3, v5, v6}, Lorg/h2/store/FileStore;->readFully([BII)V

    move-object v2, p0

    move-object v3, p1

    move-wide v5, v0

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Lorg/h2/tools/Recover;->dumpPage(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpPageStore(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "-- ERROR: page size; using "

    const-string v2, "-- pageSize: "

    const-string v3, "CREATE ALIAS IF NOT EXISTS READ_CLOB_DB FOR \""

    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_BLOB_DB FOR \""

    const-string v5, "CREATE ALIAS IF NOT EXISTS READ_CLOB FOR \""

    const-string v6, "CREATE ALIAS IF NOT EXISTS READ_BLOB FOR \""

    const/4 v7, 0x6

    const/4 v9, 0x0

    .line 2
    invoke-static {v0, v7, v9}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-direct {v8, v7}, Lorg/h2/tools/Recover;->setDatabaseName(Ljava/lang/String;)V

    new-instance v7, Lorg/h2/tools/Recover$Stats;

    invoke-direct {v7}, Lorg/h2/tools/Recover$Stats;-><init>()V

    iput-object v7, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    const/4 v7, 0x0

    :try_start_0
    const-string v10, ".sql"

    invoke-direct {v8, v0, v10}, Lorg/h2/tools/Recover;->getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".readBlob\";"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".readClob\";"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".readBlobDb\";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".readClobDb\";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Recover;->resetSchema()V

    iget-boolean v3, v8, Lorg/h2/tools/Recover;->remove:Z

    if-eqz v3, :cond_0

    const-string v3, "rw"

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v10

    goto/16 :goto_8

    :cond_0
    const-string v3, "r"

    :goto_0
    invoke-static {v7, v0, v3}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {v8, v10, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    :goto_1
    const/16 v0, 0x80

    invoke-static {v8, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v8, v6, v7}, Lorg/h2/tools/Recover;->seek(J)V

    iget-object v6, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v5}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7, v9, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Lorg/h2/store/Data;->setPos(I)V

    invoke-virtual {v5}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v5}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    invoke-virtual {v5}, Lorg/h2/store/Data;->readByte()B

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " writeVersion: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " readVersion: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, v8, Lorg/h2/tools/Recover;->pageSize:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_1

    const v2, 0x8000

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v0, 0x1000

    iput v0, v8, Lorg/h2/tools/Recover;->pageSize:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, v8, Lorg/h2/tools/Recover;->pageSize:I

    int-to-long v1, v0

    div-long v11, v3, v1

    long-to-int v1, v11

    new-array v1, v1, [I

    iput-object v1, v8, Lorg/h2/tools/Recover;->parents:[I

    invoke-static {v8, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v0

    const-wide/16 v1, 0x3

    move-wide v3, v1

    :goto_2
    const-wide/16 v13, 0x1

    cmp-long v5, v3, v11

    if-gez v5, :cond_3

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    invoke-direct {v8, v3, v4}, Lorg/h2/tools/Recover;->seek(J)V

    iget-object v5, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v9, v7}, Lorg/h2/store/FileStore;->readFully([BII)V

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v5, v8, Lorg/h2/tools/Recover;->parents:[I

    long-to-int v6, v3

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v7

    aput v7, v5, v6

    add-long/2addr v3, v13

    goto :goto_2

    :cond_3
    iget v0, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v8, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v6, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const-string v15, " ("

    const-string v9, "/"

    const-string v13, ":"

    cmp-long v14, v6, v1

    if-nez v14, :cond_6

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- log "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lorg/h2/tools/Recover$2;

    invoke-direct {v1, v8}, Lorg/h2/tools/Recover$2;-><init>(Lorg/h2/tools/Recover;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v0, v11, v12}, Lorg/h2/tools/Recover;->dumpPageStore(Ljava/io/PrintWriter;J)V

    new-instance v0, Lorg/h2/tools/Recover$Stats;

    invoke-direct {v0}, Lorg/h2/tools/Recover$Stats;-><init>()V

    iput-object v0, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v8, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, v8, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    invoke-direct {v8, v10, v11, v12}, Lorg/h2/tools/Recover;->dumpPageStore(Ljava/io/PrintWriter;J)V

    invoke-direct {v8, v10}, Lorg/h2/tools/Recover;->writeSchema(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v6, v11

    :try_start_5
    invoke-direct/range {v1 .. v7}, Lorg/h2/tools/Recover;->dumpPageLogStream(Ljava/io/PrintWriter;IIIJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    :try_start_6
    const-string v0, "---- Statistics ----"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- page count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", free: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget v1, v1, Lorg/h2/tools/Recover$Stats;->free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v1, v0, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    iget-wide v3, v0, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- page data bytes: head "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v3, v3, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", empty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v3, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", rows "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v3, v3, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v3, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    const-wide/16 v5, 0x64

    mul-long v3, v3, v5

    div-long/2addr v3, v0

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% full)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_4
    iget-object v0, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v0, v0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    array-length v1, v0

    if-ge v9, v1, :cond_5

    aget v0, v0, v9

    if-lez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/h2/tools/Recover;->getPageType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x64

    int-to-long v2, v2

    div-long/2addr v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " page(s)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v10}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    :goto_5
    iget-object v0, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-static {v0}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    goto/16 :goto_9

    :cond_6
    :try_start_7
    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    invoke-direct {v8, v6, v7}, Lorg/h2/tools/Recover;->seek(J)V

    iget-object v14, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    iget v2, v8, Lorg/h2/tools/Recover;->pageSize:I

    move/from16 p1, v3

    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3, v2}, Lorg/h2/store/FileStore;->readFully([BII)V

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    iget v14, v8, Lorg/h2/tools/Recover;->pageSize:I

    const/4 v3, 0x4

    sub-int/2addr v14, v3

    invoke-virtual {v1, v2, v3, v14}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    move v14, v4

    invoke-virtual {v0}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v3

    move/from16 v16, v5

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v5

    move-wide/from16 v17, v11

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v11

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v12

    if-ne v2, v1, :cond_7

    move-object/from16 p1, v0

    move v14, v5

    move/from16 v16, v11

    move/from16 v19, v12

    goto :goto_6

    :cond_7
    move/from16 v19, v16

    move/from16 v16, v14

    move/from16 v14, p1

    move-object/from16 p1, v0

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v14

    const-string v14, "-- head "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ": writeCounter: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " log "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " crc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v1, :cond_8

    const-string v1, "ok"

    goto :goto_7

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    move-wide v13, v0

    move/from16 v4, v16

    move-wide/from16 v11, v17

    move/from16 v5, v19

    move/from16 v3, v20

    const-wide/16 v1, 0x3

    const/4 v9, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :goto_8
    :try_start_8
    invoke-direct {v8, v7, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v7}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    goto/16 :goto_5

    :goto_9
    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v7}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    iget-object v0, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-static {v0}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    throw v1
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/h2/tools/Recover;

    invoke-direct {v0}, Lorg/h2/tools/Recover;-><init>()V

    invoke-direct {v0, p0, p1}, Lorg/h2/tools/Recover;->process(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, " TABLE "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " VIEW "

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    const-string v2, "UNKNOWN"

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-lez v0, :cond_7

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, "IF NOT EXISTS "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_4

    xor-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-nez v3, :cond_6

    const/16 v5, 0x20

    if-le v4, v5, :cond_5

    const/16 v5, 0x28

    if-ne v4, v5, :cond_6

    :cond_5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v2
.end method

.method private static getPageType(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "["

    .line 5
    .line 6
    const-string v1, "]"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    const-string p0, "stream data"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "stream trunk"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "free list"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "btree node"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string p0, "btree leaf"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_5
    const-string p0, "data overflow"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string p0, "data node"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_7
    const-string p0, "data leaf"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_8
    const-string p0, "free"

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;
    .locals 8

    .line 1
    instance-of v0, p2, Lorg/h2/value/ValueLob;

    .line 2
    .line 3
    const-string v1, "CLOB"

    .line 4
    .line 5
    const-string v2, "BLOB"

    .line 6
    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    move-object p1, p2

    .line 12
    check-cast p1, Lorg/h2/value/ValueLob;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->getSmall()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_5

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->getFileName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v3, :cond_0

    .line 29
    .line 30
    move-object v1, v2

    .line 31
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->isCompressed()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-direct {p0, p2, p1}, Lorg/h2/tools/Recover;->dumpLob(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const-string p1, ".comp"

    .line 42
    .line 43
    invoke-static {p2, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :cond_1
    const-string p1, "READ_"

    .line 48
    .line 49
    const-string v0, "(\'"

    .line 50
    .line 51
    const-string v2, ".txt\')"

    .line 52
    .line 53
    invoke-static {p1, v1, v0, p2, v2}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_2
    instance-of v0, p2, Lorg/h2/value/ValueLobDb;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    move-object v0, p2

    .line 63
    check-cast v0, Lorg/h2/value/ValueLobDb;

    .line 64
    .line 65
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getSmall()[B

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getType()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    if-ne p2, v3, :cond_3

    .line 84
    .line 85
    const-string p2, "READ_BLOB"

    .line 86
    .line 87
    move-object v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const-string p2, "READ_CLOB"

    .line 90
    .line 91
    :goto_0
    iget-boolean v0, p0, Lorg/h2/tools/Recover;->lobMaps:Z

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    const-string v0, "_MAP"

    .line 96
    .line 97
    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const-string v0, "_DB"

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_2
    iget-object v0, p0, Lorg/h2/tools/Recover;->columnTypeMap:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p2, "("

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p2, ", "

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p2, ")"

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_5
    invoke-virtual {p2}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1
.end method

.method private getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "Created file: "

    .line 12
    .line 13
    invoke-static {p2, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p0, p2}, Lorg/h2/tools/Recover;->trace(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance p2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    throw p1
.end method

.method private static isSchemaObjectTypeDelayed(Lorg/h2/engine/MetaRecord;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/h2/engine/MetaRecord;->getObjectType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/Recover;

    invoke-direct {v0}, Lorg/h2/tools/Recover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Recover;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, v0}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/h2/util/Tool;->printNoDatabaseFilesFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_4

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, ".h2.db"

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lorg/h2/tools/Recover;->dumpPageStore(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v2, ".lob.db"

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, p2, v3}, Lorg/h2/tools/Recover;->dumpLob(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string v2, ".mv.db"

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-static {p2, v2, v3}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, ".txt"

    .line 70
    .line 71
    invoke-direct {p0, p2, v3}, Lorg/h2/tools/Recover;->getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {p2, v3, v0}, Lorg/h2/mvstore/MVStoreTool;->dump(Ljava/lang/String;Ljava/io/Writer;Z)V

    .line 76
    .line 77
    .line 78
    invoke-static {p2, v3}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 82
    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v1, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, ".sql"

    .line 94
    .line 95
    invoke-direct {p0, v1, v2}, Lorg/h2/tools/Recover;->getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {p0, v1, p2}, Lorg/h2/tools/Recover;->dumpMVStoreFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    return-void
.end method

.method public static readBlob(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static readBlobDb(Ljava/sql/Connection;JJ)Lorg/h2/value/Value$ValueBlob;
    .locals 8

    check-cast p0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/tools/Recover;->verifyPageStore(Lorg/h2/store/DataHandler;)V

    const/4 v2, -0x2

    const/4 v5, 0x0

    const/16 v0, 0xf

    move-wide v3, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/h2/value/ValueLobDb;->setRecoveryReference(Z)V

    return-object p0
.end method

.method public static readBlobMap(Ljava/sql/Connection;JJ)Ljava/io/InputStream;
    .locals 1

    const-string v0, "SELECT DATA FROM INFORMATION_SCHEMA.LOB_BLOCKS WHERE LOB_ID = ? AND SEQ = ? AND ? > 0"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p1, 0x3

    invoke-interface {p0, p1, p3, p4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    new-instance p1, Ljava/io/SequenceInputStream;

    new-instance p2, Lorg/h2/tools/Recover$1;

    invoke-direct {p2, p0}, Lorg/h2/tools/Recover$1;-><init>(Ljava/sql/PreparedStatement;)V

    invoke-direct {p1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p1
.end method

.method public static readClob(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lorg/h2/tools/Recover;->readBlob(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static readClobDb(Ljava/sql/Connection;JJ)Lorg/h2/value/Value$ValueClob;
    .locals 8

    check-cast p0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/tools/Recover;->verifyPageStore(Lorg/h2/store/DataHandler;)V

    const/4 v2, -0x2

    const/4 v5, 0x0

    const/16 v0, 0x10

    move-wide v3, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/h2/value/ValueLobDb;->setRecoveryReference(Z)V

    return-object p0
.end method

.method public static readClobMap(Ljava/sql/Connection;JJ)Ljava/io/Reader;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/h2/tools/Recover;->readBlobMap(Ljava/sql/Connection;JJ)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object p3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private resetSchema()V
    .locals 1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->columnTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method private seek(J)V
    .locals 3

    iget-object v0, p0, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    iget v1, p0, Lorg/h2/tools/Recover;->pageSize:I

    int-to-long v1, v1

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/FileStore;->seek(J)V

    return-void
.end method

.method private setDatabaseName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Recover;->databaseName:Ljava/lang/String;

    return-void
.end method

.method private setStorage(I)Ljava/lang/String;
    .locals 3

    iput p1, p0, Lorg/h2/tools/Recover;->storageId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "O_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2d

    const/16 v2, 0x4d

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    return-object p1
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private traceError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, ": "

    .line 4
    .line 5
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lorg/h2/tools/Recover;->trace:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static verifyPageStore(Lorg/h2/store/DataHandler;)V
    .locals 1

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    instance-of p0, p0, Lorg/h2/store/LobStorageMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const p0, 0xc3b4

    const-string v0, "Restore page store recovery SQL script can only be restored to a PageStore file"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V
    .locals 5

    .line 1
    const-string v0, "-- ERROR: "

    .line 2
    .line 3
    const-string v1, " storageId: "

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget v0, p0, Lorg/h2/tools/Recover;->storageId:I

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, " recordLength: "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lorg/h2/tools/Recover;->recordLength:I

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " valueId: "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lorg/h2/tools/Recover;->valueId:I

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    array-length v2, p3

    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    if-ge v1, v2, :cond_1

    .line 52
    .line 53
    aget-byte v2, p3, v1

    .line 54
    .line 55
    and-int/lit16 v2, v2, 0xff

    .line 56
    .line 57
    if-lt v2, v3, :cond_0

    .line 58
    .line 59
    const/16 v3, 0x80

    .line 60
    .line 61
    if-ge v2, v3, :cond_0

    .line 62
    .line 63
    int-to-char v2, v2

    .line 64
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_0
    const/16 v2, 0x3f

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "-- dump: "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_3
    array-length v1, p3

    .line 101
    if-ge v0, v1, :cond_3

    .line 102
    .line 103
    aget-byte v1, p3, v0

    .line 104
    .line 105
    and-int/lit16 v1, v1, 0xff

    .line 106
    .line 107
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/16 v4, 0x10

    .line 111
    .line 112
    if-ge v1, v4, :cond_2

    .line 113
    .line 114
    const/16 v4, 0x30

    .line 115
    .line 116
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "// error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string p1, "Error"

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/Recover;->traceError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private writeRow(Ljava/io/PrintWriter;Lorg/h2/store/Data;[Lorg/h2/value/Value;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VALUES("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/h2/tools/Recover;->valueId:I

    iget v1, p0, Lorg/h2/tools/Recover;->valueId:I

    iget v2, p0, Lorg/h2/tools/Recover;->recordLength:I

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1

    iget v2, p0, Lorg/h2/tools/Recover;->valueId:I

    aput-object v1, p3, v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/tools/Recover;->valueId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/tools/Recover;->getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_1
    const-string v1, "out of memory"

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    goto :goto_3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :goto_3
    iget v1, p0, Lorg/h2/tools/Recover;->valueId:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lorg/h2/tools/Recover;->storageId:I

    if-nez p2, :cond_2

    :try_start_1
    new-instance p2, Lorg/h2/result/SimpleRow;

    invoke-direct {p2, p3}, Lorg/h2/result/SimpleRow;-><init>([Lorg/h2/value/Value;)V

    new-instance v0, Lorg/h2/engine/MetaRecord;

    invoke-direct {v0, p2}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/result/SearchRow;)V

    iget-object p2, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/h2/engine/MetaRecord;->getObjectType()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x3

    aget-object p2, p3, p2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/tools/Recover;->extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-void
.end method

.method private writeSchema(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "---- Schema ----"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, ";"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/h2/engine/MetaRecord;

    .line 30
    .line 31
    invoke-static {v1}, Lorg/h2/tools/Recover;->isSchemaObjectTypeDelayed(Lorg/h2/engine/MetaRecord;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/h2/engine/MetaRecord;->getSQL()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const-string v4, " SELECT * FROM "

    .line 76
    .line 77
    const-string v5, "INSERT INTO "

    .line 78
    .line 79
    const-string v6, "INFORMATION_SCHEMA.LOB"

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v8, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_2

    .line 108
    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-direct {p0, v6}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v7, "DELETE FROM "

    .line 125
    .line 126
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v4, "INFORMATION_SCHEMA.LOBS"

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_2

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v4, "UPDATE "

    .line 179
    .line 180
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v3, " SET TABLE = -2;"

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_3
    iget-object v0, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_6

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Ljava/util/Map$Entry;

    .line 222
    .line 223
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    check-cast v7, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Ljava/lang/String;

    .line 234
    .line 235
    iget-object v8, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    .line 236
    .line 237
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-eqz v8, :cond_4

    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-direct {p0, v7}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_5

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_5
    invoke-static {v5, v3, v4}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    iget-object v7, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_6
    iget-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_7

    .line 288
    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    check-cast v3, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    invoke-direct {p0, v3}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v4, "DROP TABLE "

    .line 305
    .line 306
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v4, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_7
    const-string v0, "DROP ALIAS READ_BLOB;"

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v0, "DROP ALIAS READ_CLOB;"

    .line 331
    .line 332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v0, "DROP ALIAS READ_BLOB_DB;"

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v0, "DROP ALIAS READ_CLOB_DB;"

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    if-eqz v1, :cond_8

    .line 346
    .line 347
    const-string v0, "DELETE FROM INFORMATION_SCHEMA.LOBS WHERE TABLE = -2;"

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_8
    iget-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_a

    .line 363
    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Lorg/h2/engine/MetaRecord;

    .line 369
    .line 370
    invoke-static {v1}, Lorg/h2/tools/Recover;->isSchemaObjectTypeDelayed(Lorg/h2/engine/MetaRecord;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_9

    .line 375
    .line 376
    invoke-virtual {v1}, Lorg/h2/engine/MetaRecord;->getSQL()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_a
    return-void
.end method


# virtual methods
.method public checkPowerOff()V
    .locals 0

    return-void
.end method

.method public checkWritingAllowed()V
    .locals 0

    return-void
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Recover;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageInterface;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/tools/Recover;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public getLobSyncObject()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getMaxLengthInplaceLob()I
    .locals 1

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    invoke-static {}, Lorg/h2/util/TempFileDeleter;->getInstance()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    const-string p2, "rw"

    invoke-static {p0, p1, p2}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public readLob(J[BJ[BII)I
    .locals 0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 6

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_7

    array-length v3, p1

    if-ge v2, v3, :cond_7

    aget-object v3, p1, v2

    const-string v4, "-dir"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    goto :goto_1

    :cond_0
    const-string v4, "-db"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, p1, v2

    goto :goto_1

    :cond_1
    const-string v4, "-removePassword"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lorg/h2/tools/Recover;->remove:Z

    goto :goto_1

    :cond_2
    const-string v4, "-trace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lorg/h2/tools/Recover;->trace:Z

    goto :goto_1

    :cond_3
    const-string v4, "-transactionLog"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lorg/h2/tools/Recover;->transactionLog:Z

    goto :goto_1

    :cond_4
    const-string v4, "-help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "-?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_7
    invoke-direct {p0, v0, v1}, Lorg/h2/tools/Recover;->process(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
