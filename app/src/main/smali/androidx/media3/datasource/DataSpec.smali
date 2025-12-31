.class public final Landroidx/media3/datasource/DataSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSpec$Builder;
    }
.end annotation


# instance fields
.field public final absoluteStreamPosition:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final customData:Ljava/lang/Object;

.field public final flags:I

.field public final httpBody:[B

.field public final httpMethod:I

.field public final httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final uri:Landroid/net/Uri;

.field public final uriPositionOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 6

    .line 1
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    move-object v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long v8, v1, v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-ltz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v14, v4, v12

    if-ltz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v14, v6, v12

    if-gtz v14, :cond_2

    const-wide/16 v12, -0x1

    cmp-long v14, v6, v12

    if-nez v14, :cond_3

    :cond_2
    const/4 v10, 0x1

    :cond_3
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    move-object/from16 v10, p1

    iput-object v10, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-wide v1, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    move/from16 v1, p4

    iput v1, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    if-eqz v3, :cond_4

    array-length v1, v3

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    move-object v3, v1

    :goto_2
    iput-object v3, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iput-wide v4, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v8, v0, Landroidx/media3/datasource/DataSpec;->absoluteStreamPosition:J

    iput-wide v6, v0, Landroidx/media3/datasource/DataSpec;->length:J

    move-object/from16 v1, p11

    iput-object v1, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    move/from16 v1, p12

    iput v1, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Landroidx/media3/datasource/DataSpec$1;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p13}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJ)V
    .locals 14

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/datasource/DataSpec$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/DataSpec$Builder;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec$1;)V

    return-object v0
.end method

.method public final getHttpMethodString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    invoke-static {v0}, Landroidx/media3/datasource/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroidx/media3/datasource/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public subrange(J)Landroidx/media3/datasource/DataSpec;
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/media3/datasource/DataSpec;->subrange(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public subrange(JJ)Landroidx/media3/datasource/DataSpec;
    .locals 17

    .line 2
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iget-wide v1, v0, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/media3/datasource/DataSpec;

    iget-object v4, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v7, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v8, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-object v9, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v2, v0, Landroidx/media3/datasource/DataSpec;->position:J

    add-long v10, v2, p1

    iget-object v14, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v15, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget-object v2, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    move-object v3, v1

    move-wide/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DataSpec["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec;->getHttpMethodString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->position:J

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->length:J

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Landroidx/media3/datasource/DataSpec;->flags:I

    .line 55
    .line 56
    const-string v2, "]"

    .line 57
    .line 58
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
