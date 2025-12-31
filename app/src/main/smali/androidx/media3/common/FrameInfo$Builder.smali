.class public final Landroidx/media3/common/FrameInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private colorInfo:Landroidx/media3/common/ColorInfo;

.field private height:I

.field private offsetToAddUs:J

.field private pixelWidthHeightRatio:F

.field private width:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/ColorInfo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/FrameInfo$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput p2, p0, Landroidx/media3/common/FrameInfo$Builder;->width:I

    iput p3, p0, Landroidx/media3/common/FrameInfo$Builder;->height:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/FrameInfo;
    .locals 9

    new-instance v8, Landroidx/media3/common/FrameInfo;

    iget-object v1, p0, Landroidx/media3/common/FrameInfo$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v2, p0, Landroidx/media3/common/FrameInfo$Builder;->width:I

    iget v3, p0, Landroidx/media3/common/FrameInfo$Builder;->height:I

    iget v4, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    iget-wide v5, p0, Landroidx/media3/common/FrameInfo$Builder;->offsetToAddUs:J

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/FrameInfo;-><init>(Landroidx/media3/common/ColorInfo;IIFJLandroidx/media3/common/FrameInfo$1;)V

    return-object v8
.end method

.method public setPixelWidthHeightRatio(F)Landroidx/media3/common/FrameInfo$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    return-object p0
.end method
