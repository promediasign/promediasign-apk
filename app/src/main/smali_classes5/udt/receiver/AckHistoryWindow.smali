.class public Ludt/receiver/AckHistoryWindow;
.super Ludt/util/CircularArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ludt/util/CircularArray<",
        "Ludt/receiver/AckHistoryEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ludt/util/CircularArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getEntry(J)Ludt/receiver/AckHistoryEntry;
    .locals 5

    iget-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ludt/receiver/AckHistoryEntry;

    invoke-virtual {v1}, Ludt/receiver/AckHistoryEntry;->getAckNumber()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime(J)J
    .locals 5

    iget-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ludt/receiver/AckHistoryEntry;

    invoke-virtual {v1}, Ludt/receiver/AckHistoryEntry;->getAckNumber()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ludt/receiver/AckHistoryEntry;->getSentTime()J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method
