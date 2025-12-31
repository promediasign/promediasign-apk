.class public final Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# instance fields
.field private extractor:Landroidx/media3/extractor/Extractor;

.field private extractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private final extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v0

    instance-of v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking()V

    :cond_1
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Landroidx/media3/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    new-instance v6, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    iput-object v6, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {p1, p2, p3}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    goto :goto_7

    :cond_1
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    :try_start_0
    invoke-interface {v1, v6}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_5

    :goto_3
    iget-object p2, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez p2, :cond_5

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_6

    :cond_5
    const/4 p6, 0x1

    :cond_6
    invoke-static {p6}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    throw p1

    :goto_4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_3

    goto :goto_1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_6
    iget-object p3, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz p3, :cond_8

    :goto_7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p1, p8}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    :cond_8
    new-instance p3, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "None of the available extractors ("

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p5, ") could read the stream."

    .line 1
    invoke-static {p1, p5, p4}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p3, p1, p2}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public read(Landroidx/media3/extractor/PositionHolder;)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/Extractor;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0, v1, p1}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    return-void
.end method
