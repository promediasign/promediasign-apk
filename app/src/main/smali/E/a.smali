.class public final synthetic LE/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LE/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, LE/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lsk/mimac/slideshow/utils/StorageInfo;

    check-cast p2, Lsk/mimac/slideshow/utils/StorageInfo;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->a(Lsk/mimac/slideshow/utils/StorageInfo;Lsk/mimac/slideshow/utils/StorageInfo;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lsk/mimac/slideshow/utils/Couple;

    check-cast p2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/http/page/LoggingConfigPage;->a(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/item/ItemCounter;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Lsk/mimac/slideshow/utils/Couple;

    check-cast p2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->b(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Lsk/mimac/slideshow/utils/Couple;

    check-cast p2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/downloader/DropboxGrabber;->a(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    check-cast p2, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-static {p1, p2}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->a(Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;)I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Landroidx/media3/common/Format;

    check-cast p2, Landroidx/media3/common/Format;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
