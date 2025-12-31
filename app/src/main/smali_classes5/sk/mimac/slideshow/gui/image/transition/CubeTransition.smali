.class public abstract Lsk/mimac/slideshow/gui/image/transition/CubeTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/image/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field protected final aroundY:Z

.field protected final direction:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

.field protected duration:J

.field protected final halfHeight:F

.field protected final halfWidth:F

.field protected final scaleFactor:F

.field protected final view1:Landroid/view/View;

.field protected final view2:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;II)V
    .locals 8

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->values()[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->RANDOM:Ljava/util/Random;

    invoke-static {}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->values()[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v7, v0, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;-><init>(Landroid/view/View;Landroid/view/View;IILsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;IILsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view1:Landroid/view/View;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view2:Landroid/view/View;

    iput-object p5, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->direction:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    int-to-float p1, p3

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    int-to-float p3, p4

    div-float/2addr p3, p2

    iput p3, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    sget-object p2, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    if-eq p5, p2, :cond_1

    sget-object p2, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_LEFT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->aroundY:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    const p2, 0x3ae38e38

    mul-float p1, p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->scaleFactor:F

    return-void
.end method


# virtual methods
.method public getScale(F)F
    .locals 6

    iget v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->scaleFactor:F

    float-to-double v0, v0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    mul-double v2, v2, v0

    double-to-float p1, v2

    return p1
.end method

.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/CubeTransition;
    .locals 2

    .line 1
    int-to-long v0, p1

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->duration:J

    return-object p0
.end method

.method public bridge synthetic setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->setDuration(I)Lsk/mimac/slideshow/gui/image/transition/CubeTransition;

    move-result-object p1

    return-object p1
.end method
