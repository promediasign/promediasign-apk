.class public final synthetic Lk1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIILjava/util/Set;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lk1/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/k;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/k;->c:Ljava/lang/String;

    iput-object p3, p0, Lk1/k;->d:Ljava/lang/String;

    iput-object p4, p0, Lk1/k;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lk1/k;->e:Z

    iput p6, p0, Lk1/k;->f:I

    iput p7, p0, Lk1/k;->g:I

    iput-object p8, p0, Lk1/k;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZI)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lk1/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/k;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/k;->c:Ljava/lang/String;

    iput-object p3, p0, Lk1/k;->d:Ljava/lang/String;

    iput-object p4, p0, Lk1/k;->h:Ljava/lang/Object;

    iput-object p5, p0, Lk1/k;->i:Ljava/lang/Object;

    iput p6, p0, Lk1/k;->f:I

    iput-boolean p7, p0, Lk1/k;->e:Z

    iput p8, p0, Lk1/k;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    iget v1, v0, Lk1/k;->a:I

    packed-switch v1, :pswitch_data_0

    iget v8, v0, Lk1/k;->g:I

    iget-object v1, v0, Lk1/k;->i:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/util/Set;

    iget-object v2, v0, Lk1/k;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v3, v0, Lk1/k;->c:Ljava/lang/String;

    iget-object v4, v0, Lk1/k;->d:Ljava/lang/String;

    iget-object v1, v0, Lk1/k;->h:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/Drawable;

    iget-boolean v6, v0, Lk1/k;->e:Z

    iget v7, v0, Lk1/k;->f:I

    invoke-static/range {v2 .. v9}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->a(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIILjava/util/Set;)V

    return-void

    :pswitch_0
    iget-boolean v1, v0, Lk1/k;->e:Z

    iget v2, v0, Lk1/k;->g:I

    iget-object v10, v0, Lk1/k;->b:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v11, v0, Lk1/k;->c:Ljava/lang/String;

    iget-object v12, v0, Lk1/k;->d:Ljava/lang/String;

    iget-object v3, v0, Lk1/k;->h:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    iget-object v3, v0, Lk1/k;->i:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, Lsk/mimac/slideshow/enums/MusicType;

    iget v15, v0, Lk1/k;->f:I

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-static/range {v10 .. v17}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->k(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
