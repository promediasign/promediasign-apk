.class public Lcom/scand/svg/SVG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private image:Landroid/graphics/Bitmap;

.field private limits:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/SVG;->image:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/scand/svg/SVG;->bounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/SVG;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setLimits(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/scand/svg/SVG;->limits:Landroid/graphics/RectF;

    return-void
.end method
