.class public final synthetic Lk1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZ)V
    .locals 0

    .line 1
    iput p2, p0, Lk1/f;->a:I

    iput-object p1, p0, Lk1/f;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-boolean p3, p0, Lk1/f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    .line 1
    iget v0, p0, Lk1/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk1/f;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-boolean v1, p0, Lk1/f;->c:Z

    invoke-static {v0, v1, p1, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->h(Lsk/mimac/slideshow/gui/ShowHelperImpl;ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lk1/f;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-boolean v1, p0, Lk1/f;->c:Z

    invoke-static {v0, v1, p1, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->n(Lsk/mimac/slideshow/gui/ShowHelperImpl;ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
