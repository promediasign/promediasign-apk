.class public final synthetic Lk1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field public final synthetic b:Lsk/mimac/slideshow/gui/ScrollTextView;

.field public final synthetic c:Lsk/mimac/slideshow/model/TextModel;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Lsk/mimac/slideshow/gui/ScrollTextView;Lsk/mimac/slideshow/model/TextModel;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/h;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iput-object p2, p0, Lk1/h;->b:Lsk/mimac/slideshow/gui/ScrollTextView;

    iput-object p3, p0, Lk1/h;->c:Lsk/mimac/slideshow/model/TextModel;

    iput p4, p0, Lk1/h;->d:I

    iput p5, p0, Lk1/h;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lk1/h;->d:I

    iget v1, p0, Lk1/h;->e:I

    iget-object v2, p0, Lk1/h;->a:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v3, p0, Lk1/h;->b:Lsk/mimac/slideshow/gui/ScrollTextView;

    iget-object v4, p0, Lk1/h;->c:Lsk/mimac/slideshow/model/TextModel;

    invoke-static {v2, v3, v4, v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->p(Lsk/mimac/slideshow/gui/ShowHelperImpl;Lsk/mimac/slideshow/gui/ScrollTextView;Lsk/mimac/slideshow/model/TextModel;II)V

    return-void
.end method
