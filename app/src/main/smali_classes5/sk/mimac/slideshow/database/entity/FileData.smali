.class public Lsk/mimac/slideshow/database/entity/FileData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deleteWhen:Ljava/util/Date;

.field private fileName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private startWhen:Ljava/util/Date;

.field private syncCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->action:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->id:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/database/entity/FileData;->normalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/FileData;->startWhen:Ljava/util/Date;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/FileData;->deleteWhen:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->action:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->action:Ljava/util/Map;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/entity/FileData;->normalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/FileData;->startWhen:Ljava/util/Date;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/FileData;->deleteWhen:Ljava/util/Date;

    return-void
.end method

.method private normalizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "//"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/database/entity/FileData;

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->id:Ljava/lang/Long;

    iget-object p1, p1, Lsk/mimac/slideshow/database/entity/FileData;->id:Ljava/lang/Long;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->action:Ljava/util/Map;

    return-object v0
.end method

.method public getDeleteWhen()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->deleteWhen:Ljava/util/Date;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartWhen()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->startWhen:Ljava/util/Date;

    return-object v0
.end method

.method public getSyncCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->syncCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/FileData;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f1

    add-int/2addr v1, v0

    return v1
.end method

.method public setAction(Ljava/util/Map;)V
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

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->action:Ljava/util/Map;

    return-void
.end method

.method public setDeleteWhen(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->deleteWhen:Ljava/util/Date;

    return-void
.end method

.method public setStartWhen(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->startWhen:Ljava/util/Date;

    return-void
.end method

.method public setSyncCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/FileData;->syncCode:Ljava/lang/String;

    return-void
.end method
