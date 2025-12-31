.class Lsk/mimac/slideshow/ApiServiceImpl$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/ApiServiceImpl;->synchronize(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/ApiServiceImpl;

.field final synthetic val$clearFolder:Z

.field final synthetic val$httpMethod:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/ApiServiceImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->this$0:Lsk/mimac/slideshow/ApiServiceImpl;

    iput-object p2, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$clearFolder:Z

    iput-object p4, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$target:Ljava/lang/String;

    iput-object p5, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$httpMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    sget-object v0, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$url:Ljava/lang/String;

    iget-boolean v2, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$clearFolder:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Running synchronization from cloud url={}, clearFolder={}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$target:Ljava/lang/String;

    iget-boolean v6, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$clearFolder:Z

    iget-object v7, p0, Lsk/mimac/slideshow/ApiServiceImpl$1;->val$httpMethod:Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;->API:Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;

    invoke-static/range {v4 .. v9}, Lsk/mimac/slideshow/downloader/FileGrabber;->downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/downloader/DownloadStatistics$StartMethod;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object v1

    const-string v2, "Downloaded from cloud: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
