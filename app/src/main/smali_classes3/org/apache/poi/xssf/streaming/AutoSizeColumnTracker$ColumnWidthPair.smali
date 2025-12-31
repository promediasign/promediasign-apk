.class Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnWidthPair"
.end annotation


# instance fields
.field private withSkipMergedCells:D

.field private withUseMergedCells:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withSkipMergedCells:D

    iput-wide p3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    return-void
.end method


# virtual methods
.method public getMaxColumnWidth(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withSkipMergedCells:D

    :goto_0
    return-wide v0
.end method

.method public setMaxColumnWidths(DD)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withSkipMergedCells:D

    return-void
.end method
