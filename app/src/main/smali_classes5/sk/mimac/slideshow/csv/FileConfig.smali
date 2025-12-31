.class public Lsk/mimac/slideshow/csv/FileConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final click:Ljava/lang/String;

.field private final length:Ljava/lang/Integer;

.field private final mute:Z

.field private final playEnd:Ljava/util/Date;

.field private final playStart:Ljava/util/Date;

.field private final syncCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/csv/FileConfig;->playStart:Ljava/util/Date;

    iput-object p2, p0, Lsk/mimac/slideshow/csv/FileConfig;->playEnd:Ljava/util/Date;

    iput-boolean p3, p0, Lsk/mimac/slideshow/csv/FileConfig;->mute:Z

    iput-object p4, p0, Lsk/mimac/slideshow/csv/FileConfig;->length:Ljava/lang/Integer;

    iput-object p5, p0, Lsk/mimac/slideshow/csv/FileConfig;->syncCode:Ljava/lang/String;

    iput-object p6, p0, Lsk/mimac/slideshow/csv/FileConfig;->click:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlayEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileConfig;->playEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getPlayStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileConfig;->playStart:Ljava/util/Date;

    return-object v0
.end method

.method public isExpired()Z
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/csv/FileConfig;->playEnd:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileConfig;->playStart:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/csv/FileConfig;->playEnd:Ljava/util/Date;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lsk/mimac/slideshow/csv/FileConfig;->mute:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/csv/FileConfig;->length:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/csv/FileConfig;->click:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/database/entity/FileData;

    iget-object v2, p0, Lsk/mimac/slideshow/csv/FileConfig;->playEnd:Ljava/util/Date;

    invoke-direct {v1, p1, v0, v2}, Lsk/mimac/slideshow/database/entity/FileData;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    iget-boolean p1, p0, Lsk/mimac/slideshow/csv/FileConfig;->mute:Z

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object p1

    const-string v0, "mute"

    const-string v2, "true"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lsk/mimac/slideshow/csv/FileConfig;->length:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileConfig;->length:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "length"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/csv/FileConfig;->click:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object p1

    const-string v0, "click"

    iget-object v2, p0, Lsk/mimac/slideshow/csv/FileConfig;->click:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lsk/mimac/slideshow/csv/FileConfig;->syncCode:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lsk/mimac/slideshow/csv/FileConfig;->syncCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/database/entity/FileData;->setSyncCode(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method
