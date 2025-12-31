.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Format$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT:Landroidx/media3/common/Format;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field private static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field private static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field private static final FIELD_CODECS:Ljava/lang/String;

.field private static final FIELD_COLOR_INFO:Ljava/lang/String;

.field private static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field private static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field private static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field private static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field private static final FIELD_FRAME_RATE:Ljava/lang/String;

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LABELS:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field private static final FIELD_METADATA:Ljava/lang/String;

.field private static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field private static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_STEREO_MODE:Ljava/lang/String;

.field private static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media3/common/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final cueReplacementBehavior:I

.field public final drmInitData:Landroidx/media3/common/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Landroidx/media3/common/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LABELS:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/common/Label;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_3

    :cond_0
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/Format;->getDefaultLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh1/c;

    const/4 v4, 0x2

    invoke-direct {v1, p1, v4}, Lh1/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :goto_3
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$500(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$800(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    move v0, v1

    :cond_5
    iput v0, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$900(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1000(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1100(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1300(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1400(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1400(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1500(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1600(Landroidx/media3/common/Format$Builder;)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1700(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->width:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1800(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->height:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1900(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2000(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v4, :cond_7

    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2000(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    :goto_5
    iput v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2100(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v1, v1, v5

    if-nez v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2100(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    :goto_6
    iput v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2200(Landroidx/media3/common/Format$Builder;)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2300(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2400(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2500(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2600(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2700(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2800(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v4, :cond_9

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2800(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    :goto_7
    iput v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2900(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v4, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2900(Landroidx/media3/common/Format$Builder;)I

    move-result v3

    :goto_8
    iput v3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3000(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3100(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3200(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3300(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3400(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    iput v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    goto :goto_9

    :cond_b
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3400(Landroidx/media3/common/Format$Builder;)I

    move-result p1

    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    :goto_9
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Label;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/Format;->lambda$new$0(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Label;)Z

    move-result p0

    return p0
.end method

.method private static getDefaultLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Label;

    iget-object v2, v1, Landroidx/media3/common/Label;->language:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Label;

    iget-object p0, p0, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Label;)Z
    .locals 0

    iget-object p1, p1, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string v0, "id="

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", mimeType="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, ", container="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v1, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 42
    .line 43
    const/4 v2, -0x1

    .line 44
    if-eq v1, v2, :cond_2

    .line 45
    .line 46
    const-string v1, ", bitrate="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const-string v1, ", codecs="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 71
    .line 72
    const/16 v3, 0x2c

    .line 73
    .line 74
    if-eqz v1, :cond_a

    .line 75
    .line 76
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_0
    iget-object v5, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 83
    .line 84
    iget v6, v5, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    .line 85
    .line 86
    if-ge v4, v6, :cond_9

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget-object v5, v5, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 93
    .line 94
    sget-object v6, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    const-string v5, "cenc"

    .line 103
    .line 104
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_5

    .line 115
    .line 116
    const-string v5, "clearkey"

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    sget-object v6, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_6

    .line 126
    .line 127
    const-string v5, "playready"

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    sget-object v6, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 131
    .line 132
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    const-string v5, "widevine"

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    sget-object v6, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    const-string v5, "universal"

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v7, "unknown ("

    .line 155
    .line 156
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v5, ")"

    .line 163
    .line 164
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    goto :goto_1

    .line 172
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_9
    const-string v4, ", drm=["

    .line 176
    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v1, 0x5d

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_a
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 193
    .line 194
    if-eq v1, v2, :cond_b

    .line 195
    .line 196
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 197
    .line 198
    if-eq v1, v2, :cond_b

    .line 199
    .line 200
    const-string v1, ", res="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, "x"

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_b
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 221
    .line 222
    if-eqz v1, :cond_c

    .line 223
    .line 224
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo;->isValid()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_c

    .line 229
    .line 230
    const-string v1, ", color="

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo;->toLogString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    :cond_c
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 245
    .line 246
    const/high16 v4, -0x40800000    # -1.0f

    .line 247
    .line 248
    cmpl-float v1, v1, v4

    .line 249
    .line 250
    if-eqz v1, :cond_d

    .line 251
    .line 252
    const-string v1, ", fps="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    :cond_d
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 263
    .line 264
    if-eq v1, v2, :cond_e

    .line 265
    .line 266
    const-string v1, ", channels="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    :cond_e
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 277
    .line 278
    if-eq v1, v2, :cond_f

    .line 279
    .line 280
    const-string v1, ", sample_rate="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    :cond_f
    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v1, :cond_10

    .line 293
    .line 294
    const-string v1, ", language="

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_10
    iget-object v1, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 305
    .line 306
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    const-string v2, "]"

    .line 311
    .line 312
    if-nez v1, :cond_11

    .line 313
    .line 314
    const-string v1, ", labels=["

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iget-object v4, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 324
    .line 325
    invoke-virtual {v1, v0, v4}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    :cond_11
    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 332
    .line 333
    if-eqz v1, :cond_12

    .line 334
    .line 335
    const-string v1, ", selectionFlags=["

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 345
    .line 346
    invoke-static {v4}, Landroidx/media3/common/util/Util;->getSelectionFlagStrings(I)Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v1, v0, v4}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    :cond_12
    iget v1, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 357
    .line 358
    if-eqz v1, :cond_13

    .line 359
    .line 360
    const-string v1, ", roleFlags=["

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 370
    .line 371
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getRoleFlagStrings(I)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/Format$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V

    return-object v0
.end method

.method public copyWithCryptoType(I)Landroidx/media3/common/Format;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setCryptoType(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/Format;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Format;

    iget v2, p0, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v2, :cond_2

    iget v3, p1, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v3, p1, Landroidx/media3/common/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v3, p1, Landroidx/media3/common/Format;->roleFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v3, p1, Landroidx/media3/common/Format;->averageBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    iget v3, p1, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget v3, p1, Landroidx/media3/common/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    iget v3, p1, Landroidx/media3/common/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget v3, p1, Landroidx/media3/common/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v3, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v3, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v3, p1, Landroidx/media3/common/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v3, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    iget v3, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    iget-object v3, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget-object v3, p1, Landroidx/media3/common/Format;->projectionData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v3, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v3, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getPixelCount()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->encoderPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->cryptoType:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/Format;->hashCode:I

    :cond_7
    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Format("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ", ["

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v2, p0, Landroidx/media3/common/Format;->width:I

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Landroidx/media3/common/Format;->height:I

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, "], ["

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 111
    .line 112
    const-string v2, "])"

    .line 113
    .line 114
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method public withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 14

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget v2, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    iget-object v4, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    :goto_0
    iget-object v5, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    :goto_1
    iget-object v6, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v0, v7, :cond_3

    if-ne v0, v8, :cond_4

    :cond_3
    iget-object v7, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v7, :cond_4

    move-object v6, v7

    :cond_4
    iget v7, p0, Landroidx/media3/common/Format;->averageBitrate:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_5

    iget v7, p1, Landroidx/media3/common/Format;->averageBitrate:I

    :cond_5
    iget v10, p0, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v10, v9, :cond_6

    iget v10, p1, Landroidx/media3/common/Format;->peakBitrate:I

    :cond_6
    iget-object v9, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v9, :cond_7

    iget-object v11, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v11, v0}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v8, :cond_7

    move-object v9, v11

    :cond_7
    iget-object v8, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v8, :cond_8

    iget-object v8, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    goto :goto_2

    :cond_8
    iget-object v11, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v8, v11}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v8

    :goto_2
    iget v11, p0, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v11, v12

    if-nez v12, :cond_9

    const/4 v12, 0x2

    if-ne v0, v12, :cond_9

    iget v11, p1, Landroidx/media3/common/Format;->frameRate:F

    :cond_9
    iget v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v12, p1, Landroidx/media3/common/Format;->selectionFlags:I

    or-int/2addr v0, v12

    iget v12, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v13, p1, Landroidx/media3/common/Format;->roleFlags:I

    or-int/2addr v12, v13

    iget-object p1, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v13, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {p1, v13}, Landroidx/media3/common/DrmInitData;->createSessionCreationData(Landroidx/media3/common/DrmInitData;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v11}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setTileCountHorizontal(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setTileCountVertical(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method
