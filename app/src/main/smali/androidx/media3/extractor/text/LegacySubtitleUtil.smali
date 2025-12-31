.class public abstract Landroidx/media3/extractor/text/LegacySubtitleUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getStartIndex(Landroidx/media3/extractor/text/Subtitle;Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;)I
    .locals 5

    iget-wide v0, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, v0, v1}, Landroidx/media3/extractor/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result p0

    return p0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v1

    iget-wide p0, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v3, v1, p0

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method private static outputSubtitleEvent(Landroidx/media3/extractor/text/Subtitle;ILandroidx/media3/common/util/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/Subtitle;",
            "I",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroidx/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v4

    invoke-interface {p0, p1}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide p0

    sub-long/2addr v4, p0

    const-wide/16 p0, 0x0

    cmp-long v0, v4, p0

    if-lez v0, :cond_1

    new-instance p0, Landroidx/media3/extractor/text/CuesWithTiming;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p2, p0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static toCuesWithTiming(Landroidx/media3/extractor/text/Subtitle;Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/Subtitle;",
            "Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/media3/extractor/text/LegacySubtitleUtil;->getStartIndex(Landroidx/media3/extractor/text/Subtitle;Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;)I

    move-result v0

    iget-wide v1, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    invoke-interface {p0, v1, v2}, Landroidx/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {p0, v0}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-wide v9, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v3, v9, v1

    if-gez v3, :cond_0

    new-instance v3, Landroidx/media3/extractor/text/CuesWithTiming;

    sub-long v11, v1, v9

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p2, v3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v2, v0

    :goto_1
    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {p0, v2, p2}, Landroidx/media3/extractor/text/LegacySubtitleUtil;->outputSubtitleEvent(Landroidx/media3/extractor/text/Subtitle;ILandroidx/media3/common/util/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v2, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_2
    if-ge v5, v0, :cond_3

    invoke-static {p0, v5, p2}, Landroidx/media3/extractor/text/LegacySubtitleUtil;->outputSubtitleEvent(Landroidx/media3/extractor/text/Subtitle;ILandroidx/media3/common/util/Consumer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    new-instance v1, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v2, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    invoke-interface {p0, v2, v3}, Landroidx/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v7

    invoke-interface {p0, v0}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v8

    iget-wide v2, p1, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    invoke-interface {p0, v0}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide p0

    sub-long v10, v2, p0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p2, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
