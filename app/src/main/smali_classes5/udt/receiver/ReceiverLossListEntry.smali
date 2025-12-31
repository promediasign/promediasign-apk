.class public Ludt/receiver/ReceiverLossListEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ludt/receiver/ReceiverLossListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private k:J

.field private lastFeedbacktime:J

.field private final sequenceNumber:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x2

    .line 5
    .line 6
    iput-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->k:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    iput-wide p1, p0, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    .line 15
    .line 16
    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Ludt/receiver/ReceiverLossListEntry;->lastFeedbacktime:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Got sequence number "

    .line 26
    .line 27
    invoke-static {v1, p1, p2}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ludt/receiver/ReceiverLossListEntry;

    invoke-virtual {p0, p1}, Ludt/receiver/ReceiverLossListEntry;->compareTo(Ludt/receiver/ReceiverLossListEntry;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ludt/receiver/ReceiverLossListEntry;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    iget-wide v2, p1, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Ludt/receiver/ReceiverLossListEntry;

    iget-wide v2, p0, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    iget-wide v4, p1, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public feedback()V
    .locals 4

    iget-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->k:J

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->lastFeedbacktime:J

    return-void
.end method

.method public getK()J
    .locals 2

    iget-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->k:J

    return-wide v0
.end method

.method public getLastFeedbackTime()J
    .locals 2

    iget-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->lastFeedbacktime:J

    return-wide v0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Ludt/receiver/ReceiverLossListEntry;->k:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Ludt/receiver/ReceiverLossListEntry;->sequenceNumber:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "[k="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Ludt/receiver/ReceiverLossListEntry;->k:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ",time="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Ludt/receiver/ReceiverLossListEntry;->lastFeedbacktime:J

    .line 27
    .line 28
    const-string v3, "]"

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
