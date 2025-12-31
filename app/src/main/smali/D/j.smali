.class public final synthetic LD/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper$Listener;
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Landroidx/media3/common/util/Consumer;
.implements Lsk/mimac/slideshow/utils/Consumer;
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Lorg/mozilla/javascript/ContextAction;
.implements Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LD/j;->a:I

    iput-object p1, p0, LD/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Display;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LD/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->o(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableList$Builder;

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-void

    :pswitch_1
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/SubtitleExtractor;

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {v0, p1}, Landroidx/media3/extractor/text/SubtitleExtractor;->a(Landroidx/media3/extractor/text/SubtitleExtractor;Landroidx/media3/extractor/text/CuesWithTiming;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create()Ljava/net/ServerSocket;
    .locals 1

    .line 1
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/CertificateUtils;->a(Ljavax/net/ssl/SSLServerSocketFactory;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 1

    .line 2
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-static {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LD/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/tools/shell/Global;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->a(Lorg/mozilla/javascript/tools/shell/Global;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Script;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/JavaAdapter;->a(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public timeUsToTargetTime(J)J
    .locals 1

    .line 1
    iget-object v0, p0, LD/j;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
