.class public Lsk/mimac/slideshow/database/entity/RssServerMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private endWhen:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private startWhen:Ljava/util/Date;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->id:Ljava/lang/Long;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->title:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->description:Ljava/lang/String;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->startWhen:Ljava/util/Date;

    iput-object p5, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->endWhen:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->title:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->description:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->startWhen:Ljava/util/Date;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->endWhen:Ljava/util/Date;

    return-void
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
    check-cast p1, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->id:Ljava/lang/Long;

    iget-object p1, p1, Lsk/mimac/slideshow/database/entity/RssServerMessage;->id:Ljava/lang/Long;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndWhen()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->endWhen:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartWhen()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->startWhen:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->id:Ljava/lang/Long;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RssMessage{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteWhen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/RssServerMessage;->endWhen:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
