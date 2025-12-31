.class public Ludt/receiver/PacketHistoryWindow;
.super Ludt/util/CircularArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ludt/util/CircularArray<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final intervals:[J

.field private final num:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ludt/util/CircularArray;-><init>(I)V

    iget p1, p0, Ludt/util/CircularArray;->max:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ludt/receiver/PacketHistoryWindow;->num:I

    new-array p1, p1, [J

    iput-object p1, p0, Ludt/receiver/PacketHistoryWindow;->intervals:[J

    return-void
.end method


# virtual methods
.method public getPacketArrivalSpeed()J
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ludt/util/CircularArray;->haveOverflow:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_0
    iget v1, v0, Ludt/util/CircularArray;->position:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-gez v1, :cond_1

    iget v1, v0, Ludt/receiver/PacketHistoryWindow;->num:I

    :cond_1
    move-wide v5, v3

    const/4 v7, 0x0

    :cond_2
    iget-object v8, v0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    iget v1, v0, Ludt/receiver/PacketHistoryWindow;->num:I

    :cond_3
    iget-object v10, v0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v10, v0, Ludt/receiver/PacketHistoryWindow;->intervals:[J

    aput-wide v8, v10, v7

    long-to-double v8, v8

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    iget v8, v0, Ludt/receiver/PacketHistoryWindow;->num:I

    if-lt v7, v8, :cond_2

    int-to-double v7, v8

    div-double/2addr v5, v7

    array-length v1, v10

    move-wide v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-wide v11, v10, v2

    long-to-double v11, v11

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double v15, v5, v13

    cmpl-double v17, v11, v15

    if-lez v17, :cond_4

    mul-double v13, v13, v5

    cmpg-double v15, v11, v13

    if-gez v15, :cond_4

    add-double/2addr v8, v11

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    if-le v7, v1, :cond_6

    const-wide v1, 0x412e848000000000L    # 1000000.0

    int-to-double v3, v7

    mul-double v3, v3, v1

    div-double/2addr v3, v8

    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-long v1, v1

    return-wide v1
.end method
