.class public final synthetic Lsk/mimac/slideshow/http/page/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/InterruptableRunnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/DisplayItemThread;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/DisplayItemThread;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/b;->a:Lsk/mimac/slideshow/gui/DisplayItemThread;

    iput-object p2, p0, Lsk/mimac/slideshow/http/page/b;->b:Ljava/lang/String;

    iput p3, p0, Lsk/mimac/slideshow/http/page/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/b;->b:Ljava/lang/String;

    iget v1, p0, Lsk/mimac/slideshow/http/page/b;->c:I

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/b;->a:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/http/page/ShowFormPage;->a(Lsk/mimac/slideshow/gui/DisplayItemThread;Ljava/lang/String;I)V

    return-void
.end method
