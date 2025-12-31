.class public final Landroidx/media3/common/VideoSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/VideoSize;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Landroidx/media3/common/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/VideoSize;-><init>(II)V

    sput-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/VideoSize;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/VideoSize;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/VideoSize;->width:I

    iput p2, p0, Landroidx/media3/common/VideoSize;->height:I

    iput p3, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iput p4, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/media3/common/VideoSize;

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->width:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->height:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
