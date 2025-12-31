.class public Lsk/mimac/slideshow/utils/Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public left:I

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/utils/Rectangle;->left:I

    iput p2, p0, Lsk/mimac/slideshow/utils/Rectangle;->top:I

    iput p3, p0, Lsk/mimac/slideshow/utils/Rectangle;->width:I

    iput p4, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    return-void
.end method


# virtual methods
.method public copy()Lsk/mimac/slideshow/utils/Rectangle;
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/utils/Rectangle;

    iget v1, p0, Lsk/mimac/slideshow/utils/Rectangle;->left:I

    iget v2, p0, Lsk/mimac/slideshow/utils/Rectangle;->top:I

    iget v3, p0, Lsk/mimac/slideshow/utils/Rectangle;->width:I

    iget v4, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    return-object v0
.end method
