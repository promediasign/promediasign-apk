.class public abstract Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final readHTMLFromUTF8File(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, "\n"

    const/4 v2, 0x0

    const/16 v3, 0x3e

    invoke-static {v0, v1, v2, v2, v3}, Lkotlin/collections/CollectionsKt;->c(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t parse HTML file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
