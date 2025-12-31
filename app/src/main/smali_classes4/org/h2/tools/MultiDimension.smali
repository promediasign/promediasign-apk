.class public Lorg/h2/tools/MultiDimension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/h2/tools/MultiDimension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/h2/tools/MultiDimension;

    invoke-direct {v0}, Lorg/h2/tools/MultiDimension;-><init>()V

    sput-object v0, Lorg/h2/tools/MultiDimension;->INSTANCE:Lorg/h2/tools/MultiDimension;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addMortonRanges(Ljava/util/ArrayList;[I[III)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[J>;[I[III)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v0, p5

    const/4 v9, 0x1

    const/16 v2, 0x64

    const-string v3, ""

    if-gt v0, v2, :cond_6

    move/from16 v10, p4

    const/4 v2, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v2, v10, :cond_3

    aget v15, v8, v2

    aget v16, v7, v2

    sub-int v15, v15, v16

    if-ltz v15, :cond_2

    add-int/lit8 v1, v15, 0x1

    int-to-long v4, v1

    mul-long v11, v11, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v11, v4

    if-ltz v1, :cond_1

    if-le v15, v14, :cond_0

    move v13, v2

    move v14, v15

    :cond_0
    add-int/2addr v2, v9

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1
    invoke-static {v3, v11, v12}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {v15, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v6, v7}, Lorg/h2/tools/MultiDimension;->interleave([I)J

    move-result-wide v1

    invoke-virtual {v6, v8}, Lorg/h2/tools/MultiDimension;->interleave([I)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-ltz v5, :cond_5

    sub-long v14, v3, v1

    const-wide/16 v17, 0x1

    add-long v14, v14, v17

    cmp-long v5, v14, v11

    if-nez v5, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v5, 0x0

    aput-wide v1, v0, v5

    aput-wide v3, v0, v9

    move-object/from16 v11, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v11, p1

    aget v1, v7, v13

    aget v2, v8, v13

    invoke-static {v1, v2}, Lorg/h2/tools/MultiDimension;->findMiddle(II)I

    move-result v12

    aget v14, v8, v13

    aput v12, v8, v13

    add-int/lit8 v15, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/h2/tools/MultiDimension;->addMortonRanges(Ljava/util/ArrayList;[I[III)V

    aput v14, v8, v13

    aget v14, v7, v13

    add-int/2addr v12, v9

    aput v12, v7, v13

    invoke-direct/range {v0 .. v5}, Lorg/h2/tools/MultiDimension;->addMortonRanges(Ljava/util/ArrayList;[I[III)V

    aput v14, v7, v13

    :goto_1
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-static {v0, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private combineEntries(Ljava/util/ArrayList;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[J>;I)V"
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v0, 0xa

    :goto_0
    if-ge v0, p2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    aget-wide v7, v3, v4

    int-to-long v9, v0

    add-long/2addr v7, v9

    aget-wide v9, v6, v1

    cmp-long v11, v7, v9

    if-ltz v11, :cond_0

    aget-wide v7, v6, v4

    aput-wide v7, v3, v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    int-to-long v6, v3

    aget-wide v8, v5, v4

    aget-wide v10, v5, v1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    long-to-int v3, v8

    goto :goto_2

    :cond_2
    mul-int/lit8 v1, p2, 0x2

    if-gt v3, v1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    goto :goto_3

    :cond_3
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private static findMiddle(II)I
    .locals 4

    sub-int v0, p1, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return p0

    :cond_0
    if-ne v0, v1, :cond_1

    add-int/2addr p0, v1

    return p0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    shl-int v3, v1, v2

    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, p0, 0x2

    shl-int v2, v1, v2

    invoke-static {v0, v2}, Lorg/h2/tools/MultiDimension;->roundUp(II)I

    move-result v0

    sub-int/2addr v0, v1

    if-le v0, p0, :cond_3

    if-ge v0, p1, :cond_3

    return v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "<"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getBitsPerValue(I)I
    .locals 1

    const/16 v0, 0x40

    div-int/2addr v0, p0

    const/16 p0, 0x1f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lorg/h2/tools/MultiDimension;
    .locals 1

    sget-object v0, Lorg/h2/tools/MultiDimension;->INSTANCE:Lorg/h2/tools/MultiDimension;

    return-object v0
.end method

.method private getMortonRanges([I[I)[[J
    .locals 9

    array-length v4, p1

    array-length v0, p2

    if-ne v0, v4, :cond_2

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget v1, p1, v0

    aget v2, p2, v0

    if-le v1, v2, :cond_0

    aput v2, p1, v0

    aput v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, v4}, Lorg/h2/tools/MultiDimension;->getSize([I[II)I

    move-result v7

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/h2/tools/MultiDimension;->addMortonRanges(Ljava/util/ArrayList;[I[III)V

    invoke-direct {p0, v8, v7}, Lorg/h2/tools/MultiDimension;->combineEntries(Ljava/util/ArrayList;I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x2

    new-array v0, p2, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    aput p1, v0, v6

    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getSize([I[II)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p2, :cond_0

    aget v3, p1, v1

    aget v4, p0, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    mul-int v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static roundUp(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    neg-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/h2/tools/MultiDimension;->compare([J[J)I

    move-result p1

    return p1
.end method

.method public compare([J[J)I
    .locals 3

    .line 2
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide p1, p2, v0

    cmp-long v0, v1, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public deinterleave(IJI)I
    .locals 8

    invoke-static {p1}, Lorg/h2/tools/MultiDimension;->getBitsPerValue(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {p1, v4, v1, p4}, Lch/qos/logback/core/joran/util/a;->b(IIII)I

    move-result v4

    shr-long v4, p2, v4

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public generatePreparedQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT D.* FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " D, TABLE(_FROM_ BIGINT=?, _TO_ BIGINT=?) WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " BETWEEN _FROM_ AND _TO_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v1, p3, p2

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+1 BETWEEN ?+1 AND ?+1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxValue(I)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lorg/h2/tools/MultiDimension;->getBitsPerValue(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-wide/16 v0, 0x1

    .line 13
    .line 14
    shl-long v2, v0, p1

    .line 15
    .line 16
    sub-long/2addr v2, v0

    .line 17
    long-to-int p1, v2

    .line 18
    return p1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public getResult(Ljava/sql/PreparedStatement;[I[I)Ljava/sql/ResultSet;
    .locals 10

    invoke-direct {p0, p2, p3}, Lorg/h2/tools/MultiDimension;->getMortonRanges([I[I)[[J

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Long;

    new-array v3, v1, [Ljava/lang/Long;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_0

    aget-object v7, v0, v5

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v5

    aget-object v7, v0, v5

    aget-wide v6, v7, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v6, v2}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0, v3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    array-length v1, p2

    const/4 v2, 0x3

    :goto_1
    if-ge v4, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget v5, p2, v4

    invoke-interface {p1, v2, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    add-int/2addr v2, v0

    aget v5, p3, v4

    invoke-interface {p1, v3, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public interleave(II)J
    .locals 7

    const-string v0, "0<"

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    shl-long/2addr v3, v2

    or-long/2addr v0, v3

    int-to-long v3, p2

    and-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    shl-long/2addr v3, v2

    or-long/2addr v0, v3

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs interleave([I)J
    .locals 17

    move-object/from16 v0, p1

    array-length v1, v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lorg/h2/tools/MultiDimension;->getMaxValue(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1}, Lorg/h2/tools/MultiDimension;->getBitsPerValue(I)I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v10, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_2

    aget v12, v0, v9

    int-to-long v12, v12

    cmp-long v14, v12, v6

    if-ltz v14, :cond_1

    cmp-long v14, v12, v3

    if-gtz v14, :cond_1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_0

    const-wide/16 v15, 0x1

    shl-long/2addr v15, v14

    and-long/2addr v15, v12

    const/4 v6, 0x1

    invoke-static {v1, v6, v14, v9}, Lch/qos/logback/core/joran/util/a;->b(IIII)I

    move-result v6

    shl-long v6, v15, v6

    or-long/2addr v10, v6

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0<"

    const-string v5, "<"

    .line 9
    invoke-static {v1, v12, v13, v5}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-wide v10
.end method

.method public normalize(IDDD)I
    .locals 1

    cmpg-double v0, p2, p4

    if-ltz v0, :cond_0

    cmpl-double v0, p2, p6

    if-gtz v0, :cond_0

    sub-double/2addr p2, p4

    sub-double/2addr p6, p4

    div-double/2addr p2, p6

    invoke-virtual {p0, p1}, Lorg/h2/tools/MultiDimension;->getMaxValue(I)I

    move-result p1

    int-to-double p4, p1

    mul-double p2, p2, p4

    double-to-int p1, p2

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, "<"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
