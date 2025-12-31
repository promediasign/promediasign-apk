.class public Ludt/util/MeanThroughput;
.super Ludt/util/MeanValue;
.source "SourceFile"


# instance fields
.field private final packetSize:D


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-direct {p0, p1, v0, v1, p2}, Ludt/util/MeanThroughput;-><init>(Ljava/lang/String;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;ZI)V

    int-to-double p1, p4

    iput-wide p1, p0, Ludt/util/MeanThroughput;->packetSize:D

    return-void
.end method


# virtual methods
.method public getMean()D
    .locals 4

    iget-wide v0, p0, Ludt/util/MeanThroughput;->packetSize:D

    invoke-super {p0}, Ludt/util/MeanValue;->getMean()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method
