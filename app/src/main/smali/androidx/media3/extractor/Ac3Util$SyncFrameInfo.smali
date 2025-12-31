.class public final Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitrate:I

.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I

.field public final streamType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->streamType:I

    iput p3, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->channelCount:I

    iput p4, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleRate:I

    iput p5, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->frameSize:I

    iput p6, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleCount:I

    iput p7, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->bitrate:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIIILandroidx/media3/extractor/Ac3Util$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
