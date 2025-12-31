.class public Ludt/receiver/AckHistoryEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ackNumber:J

.field private final ackSequenceNumber:J

.field private final sentTime:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ludt/receiver/AckHistoryEntry;->ackSequenceNumber:J

    iput-wide p3, p0, Ludt/receiver/AckHistoryEntry;->ackNumber:J

    iput-wide p5, p0, Ludt/receiver/AckHistoryEntry;->sentTime:J

    return-void
.end method


# virtual methods
.method public getAckNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/receiver/AckHistoryEntry;->ackNumber:J

    return-wide v0
.end method

.method public getAge()J
    .locals 4

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/receiver/AckHistoryEntry;->sentTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Ludt/receiver/AckHistoryEntry;->sentTime:J

    return-wide v0
.end method
