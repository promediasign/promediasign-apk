.class public final Landroidx/media3/common/AudioAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/AudioAttributes$AudioAttributesV21;,
        Landroidx/media3/common/AudioAttributes$Builder;,
        Landroidx/media3/common/AudioAttributes$Api32;,
        Landroidx/media3/common/AudioAttributes$Api29;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/AudioAttributes;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media3/common/AudioAttributes;

.field private static final FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

.field private static final FIELD_CONTENT_TYPE:Ljava/lang/String;

.field private static final FIELD_FLAGS:Ljava/lang/String;

.field private static final FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

.field private static final FIELD_USAGE:Ljava/lang/String;


# instance fields
.field public final allowedCapturePolicy:I

.field private audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

.field public final contentType:I

.field public final flags:I

.field public final spatializationBehavior:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/AudioAttributes;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    iput p2, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    iput p3, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    iput p4, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    iput p5, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILandroidx/media3/common/AudioAttributes$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Landroidx/media3/common/AudioAttributes;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/AudioAttributes;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/AudioAttributes;

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->usage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    iget p1, p1, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;-><init>(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/AudioAttributes$1;)V

    iput-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    add-int/2addr v0, v1

    return v0
.end method
