.class public Lsk/mimac/slideshow/database/entity/GrabberData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clearFolder:Z

.field private fileName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->id:Ljava/lang/Long;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->fileName:Ljava/lang/String;

    iput-boolean p4, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->clearFolder:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->clearFolder:Z

    return-void
.end method


# virtual methods
.method public getClearedDropboxUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "dropbox://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/UrlUtils;->formatGrabberUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isClearFolder()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->clearFolder:Z

    return v0
.end method

.method public setClearFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->clearFolder:Z

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GrabberData{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->id:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", url=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', fileName=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/GrabberData;->fileName:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "\'}"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
