.class public Lsk/mimac/slideshow/http/page/BenchmarkPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/benchmark"

    return-object v0
.end method

.method public process()V
    .locals 3

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v1, Lsk/mimac/slideshow/benchmark/BenchmarkService;

    invoke-direct {v1}, Lsk/mimac/slideshow/benchmark/BenchmarkService;-><init>()V

    invoke-virtual {v1}, Lsk/mimac/slideshow/benchmark/BenchmarkService;->benchmark()Ljava/util/List;

    move-result-object v1

    const-string v2, "result"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
