.class public final synthetic Lk1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lsk/mimac/slideshow/gui/play/PlayId;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/i;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lk1/i;->c:Ljava/lang/String;

    iput p4, p0, Lk1/i;->d:I

    iput-boolean p5, p0, Lk1/i;->e:Z

    iput-object p6, p0, Lk1/i;->f:Ljava/lang/String;

    iput-object p7, p0, Lk1/i;->g:Lsk/mimac/slideshow/gui/play/PlayId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v5, p0, Lk1/i;->f:Ljava/lang/String;

    iget-object v6, p0, Lk1/i;->g:Lsk/mimac/slideshow/gui/play/PlayId;

    iget-object v0, p0, Lk1/i;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v1, p0, Lk1/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lk1/i;->c:Ljava/lang/String;

    iget v3, p0, Lk1/i;->d:I

    iget-boolean v4, p0, Lk1/i;->e:Z

    invoke-static/range {v0 .. v6}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->j(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method
