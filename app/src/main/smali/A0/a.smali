.class public final synthetic LA0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Lio/netty/channel/ChannelFactory;
.implements Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
.implements Landroidx/media3/extractor/ExtractorsFactory;
.implements Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
.implements Lsk/mimac/slideshow/utils/ThrowingRunnable;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lsk/mimac/slideshow/utils/Consumer;
.implements Lsk/mimac/slideshow/utils/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LA0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    check-cast p1, Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->resume()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->pause()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->getCurrentPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Landroidx/media3/extractor/wav/WavExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Landroidx/media3/extractor/ts/TsExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {}, Landroidx/media3/extractor/ts/PsExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Landroidx/media3/extractor/ts/AdtsExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {}, Landroidx/media3/extractor/ts/Ac4Extractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {}, Landroidx/media3/extractor/ts/Ac3Extractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Landroidx/media3/extractor/ogg/OggExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {}, Landroidx/media3/extractor/mp4/Mp4Extractor;->b()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {}, Landroidx/media3/extractor/mp3/Mp3Extractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {}, Landroidx/media3/extractor/flv/FlvExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {}, Landroidx/media3/extractor/flac/FlacExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {}, Landroidx/media3/extractor/amr/AmrExtractor;->a()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 2
    iget v0, p0, LA0/a;->a:I

    invoke-static {p0, p1, p2}, LI/c;->a(Landroidx/media3/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IIIII)Z
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->b(IIIII)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->a(IIIII)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    invoke-static {p0, p1}, LI/c;->b(Landroidx/media3/extractor/ExtractorsFactory;Z)Landroidx/media3/extractor/ExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->b()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->a()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public newChannel()Lio/netty/channel/Channel;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-direct {v0}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>()V

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lsk/mimac/slideshow/display/DisplayHelper;->j(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->f()V

    return-void

    :pswitch_0
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->e()V

    return-void

    :pswitch_1
    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->setLockTaskPackages()V

    return-void

    :pswitch_2
    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->clearDeviceAdminApp()V

    return-void

    :pswitch_3
    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->clearDeviceOwnerApp()V

    return-void

    :pswitch_4
    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->setDeviceOwnerApp()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->a:I

    invoke-static {p0, p1}, LI/c;->c(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;

    move-result-object p1

    return-object p1
.end method
