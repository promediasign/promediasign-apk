.class public Lorg/h2/schema/Sequence;
.super Lorg/h2/schema/SchemaObjectBase;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x20


# instance fields
.field private belongsToTable:Z

.field private cacheSize:J

.field private cycle:Z

.field private final flushSync:Ljava/lang/Object;

.field private increment:J

.field private maxValue:J

.field private minValue:J

.field private value:J

.field private valueWithMargin:J

.field private writeWithMargin:Z


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;JJ)V
    .locals 11

    .line 1
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lorg/h2/schema/Sequence;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V
    .locals 10

    .line 2
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lorg/h2/schema/Sequence;->flushSync:Ljava/lang/Object;

    const/16 v3, 0x9

    move-object v4, p1

    move v5, p2

    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/h2/schema/SchemaObjectBase;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    const-wide/16 v3, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    iput-wide v5, v0, Lorg/h2/schema/Sequence;->increment:J

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    invoke-static {p4, v5, v6}, Lorg/h2/schema/Sequence;->getDefaultMinValue(Ljava/lang/Long;J)J

    move-result-wide v5

    :goto_1
    iput-wide v5, v0, Lorg/h2/schema/Sequence;->minValue:J

    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    iget-wide v5, v0, Lorg/h2/schema/Sequence;->increment:J

    invoke-static {p4, v5, v6}, Lorg/h2/schema/Sequence;->getDefaultMaxValue(Ljava/lang/Long;J)J

    move-result-wide v5

    :goto_2
    iput-wide v5, v0, Lorg/h2/schema/Sequence;->maxValue:J

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    iget-wide v5, v0, Lorg/h2/schema/Sequence;->increment:J

    invoke-direct {p0, v5, v6}, Lorg/h2/schema/Sequence;->getDefaultStartValue(J)J

    move-result-wide v5

    :goto_3
    iput-wide v5, v0, Lorg/h2/schema/Sequence;->value:J

    iput-wide v5, v0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_4

    :cond_4
    const-wide/16 v2, 0x20

    :goto_4
    iput-wide v2, v0, Lorg/h2/schema/Sequence;->cacheSize:J

    move/from16 v2, p9

    iput-boolean v2, v0, Lorg/h2/schema/Sequence;->cycle:Z

    move/from16 v2, p10

    iput-boolean v2, v0, Lorg/h2/schema/Sequence;->belongsToTable:Z

    iget-wide v2, v0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v4, v0, Lorg/h2/schema/Sequence;->minValue:J

    iget-wide v6, v0, Lorg/h2/schema/Sequence;->maxValue:J

    iget-wide v8, v0, Lorg/h2/schema/Sequence;->increment:J

    invoke-static/range {v2 .. v9}, Lorg/h2/schema/Sequence;->isValid(JJJJ)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-wide v2, v0, Lorg/h2/schema/Sequence;->value:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lorg/h2/schema/Sequence;->minValue:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lorg/h2/schema/Sequence;->maxValue:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lorg/h2/schema/Sequence;->increment:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {p3, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0x15f99

    invoke-static {v2, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private flushInternal(Lorg/h2/engine/Session;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/schema/Sequence;->flushSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    iput-boolean v2, p0, Lorg/h2/schema/Sequence;->writeWithMargin:Z

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, p0}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v3, p0, Lorg/h2/schema/Sequence;->writeWithMargin:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1}, Lorg/h2/engine/Database;->unlockMeta(Lorg/h2/engine/Session;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v3, p0, Lorg/h2/schema/Sequence;->writeWithMargin:Z

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static getDefaultMaxValue(Ljava/lang/Long;J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    if-eqz p0, :cond_1

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method private static getDefaultMinValue(Ljava/lang/Long;J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    :goto_0
    if-eqz p0, :cond_1

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method private getDefaultStartValue(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide p1, p0, Lorg/h2/schema/Sequence;->minValue:J

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lorg/h2/schema/Sequence;->maxValue:J

    :goto_0
    return-wide p1
.end method

.method private static isValid(JJJJ)Z
    .locals 1

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    cmp-long v0, p4, p0

    if-ltz v0, :cond_0

    cmp-long p0, p4, p2

    if-lez p0, :cond_0

    const-wide/16 p0, 0x0

    cmp-long v0, p6, p0

    if-eqz v0, :cond_0

    invoke-static {p6, p7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p4, p5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/h2/schema/Sequence;->flushWithoutMargin()V

    return-void
.end method

.method public flush(Lorg/h2/engine/Session;)V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->isSysTableLockedBy(Lorg/h2/engine/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    :goto_0
    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/h2/schema/Sequence;->flushInternal(Lorg/h2/engine/Session;)V

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    :goto_2
    monitor-enter v0

    :try_start_1
    invoke-direct {p0, p1}, Lorg/h2/schema/Sequence;->flushInternal(Lorg/h2/engine/Session;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->commit(Z)V

    monitor-exit v0

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public flushWithoutMargin()V
    .locals 5

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    iget-wide v2, p0, Lorg/h2/schema/Sequence;->value:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/schema/Sequence;->flush(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method

.method public getBelongsToTable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/schema/Sequence;->belongsToTable:Z

    return v0
.end method

.method public getCacheSize()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->cacheSize:J

    return-wide v0
.end method

.method public declared-synchronized getCreateSQL()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/schema/Sequence;->writeWithMargin:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    iget-wide v0, p0, Lorg/h2/schema/Sequence;->value:J

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE SEQUENCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " START WITH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/schema/Sequence;->increment:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const-string v3, " INCREMENT BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/schema/Sequence;->increment:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v3, p0, Lorg/h2/schema/Sequence;->minValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lorg/h2/schema/Sequence;->increment:J

    invoke-static {v5, v6, v7}, Lorg/h2/schema/Sequence;->getDefaultMinValue(Ljava/lang/Long;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-string v3, " MINVALUE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/schema/Sequence;->minValue:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    iget-wide v3, p0, Lorg/h2/schema/Sequence;->maxValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v5, p0, Lorg/h2/schema/Sequence;->increment:J

    invoke-static {v0, v5, v6}, Lorg/h2/schema/Sequence;->getDefaultMaxValue(Ljava/lang/Long;J)J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-eqz v5, :cond_3

    const-string v0, " MAXVALUE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->maxValue:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v0, p0, Lorg/h2/schema/Sequence;->cycle:Z

    if-eqz v0, :cond_4

    const-string v0, " CYCLE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-wide v0, p0, Lorg/h2/schema/Sequence;->cacheSize:J

    const-wide/16 v3, 0x20

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    const-string v0, " CACHE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->cacheSize:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v0, p0, Lorg/h2/schema/Sequence;->belongsToTable:Z

    if-eqz v0, :cond_6

    const-string v0, " BELONGS_TO_TABLE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized getCurrentValue()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v2, p0, Lorg/h2/schema/Sequence;->increment:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCycle()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/schema/Sequence;->cycle:Z

    return v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/h2/schema/Sequence;->getBelongsToTable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP SEQUENCE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncrement()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->increment:J

    return-wide v0
.end method

.method public getMaxValue()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->maxValue:J

    return-wide v0
.end method

.method public getMinValue()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->minValue:J

    return-wide v0
.end method

.method public getNext(Lorg/h2/engine/Session;)J
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/h2/schema/Sequence;->increment:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    iget-wide v5, p0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v7, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    cmp-long v5, v0, v3

    if-gez v5, :cond_2

    iget-wide v5, p0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v7, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_2

    :cond_1
    iget-wide v5, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    iget-wide v7, p0, Lorg/h2/schema/Sequence;->cacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    mul-long v7, v7, v0

    add-long/2addr v7, v5

    :try_start_1
    iput-wide v7, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    cmp-long v6, v0, v3

    if-lez v6, :cond_3

    iget-wide v6, p0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v8, p0, Lorg/h2/schema/Sequence;->maxValue:J

    cmp-long v10, v6, v8

    if-gtz v10, :cond_4

    :cond_3
    cmp-long v6, v0, v3

    if-gez v6, :cond_7

    iget-wide v6, p0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v8, p0, Lorg/h2/schema/Sequence;->minValue:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_7

    :cond_4
    iget-boolean v5, p0, Lorg/h2/schema/Sequence;->cycle:Z

    if-eqz v5, :cond_6

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    iget-wide v3, p0, Lorg/h2/schema/Sequence;->minValue:J

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Lorg/h2/schema/Sequence;->maxValue:J

    :goto_2
    iput-wide v3, p0, Lorg/h2/schema/Sequence;->value:J

    iget-wide v5, p0, Lorg/h2/schema/Sequence;->cacheSize:J

    mul-long v5, v5, v0

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x15f96

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_7
    move v2, v5

    :goto_3
    iget-wide v3, p0, Lorg/h2/schema/Sequence;->value:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/h2/schema/Sequence;->value:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1}, Lorg/h2/schema/Sequence;->flush(Lorg/h2/engine/Session;)V

    :cond_8
    return-wide v3

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public declared-synchronized modify(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lorg/h2/schema/Sequence;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->minValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->maxValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    iget-wide v0, p0, Lorg/h2/schema/Sequence;->increment:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/h2/schema/Sequence;->isValid(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/schema/Sequence;->value:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/schema/Sequence;->valueWithMargin:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/schema/Sequence;->minValue:J

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/schema/Sequence;->maxValue:J

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/schema/Sequence;->increment:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    const p2, 0x15f99

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public setBelongsToTable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/Sequence;->belongsToTable:Z

    return-void
.end method

.method public setCacheSize(J)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/schema/Sequence;->cacheSize:J

    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/Sequence;->cycle:Z

    return-void
.end method
