.class public Lsk/mimac/slideshow/http/api/impl/FileCommand;
.super Lsk/mimac/slideshow/http/api/Command;
.source "SourceFile"


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lsk/mimac/slideshow/http/api/Command;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/api/impl/FileCommand;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v0, "target"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/FileHashUtils;->resolveHash(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/http/api/impl/FileCommand;->headers:Ljava/util/Map;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/http/HttpServer;->serveFileInternal(Ljava/io/File;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
