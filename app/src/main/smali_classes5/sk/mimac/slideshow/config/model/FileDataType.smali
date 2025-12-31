.class public Lsk/mimac/slideshow/config/model/FileDataType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "FileDataType"
.end annotation


# instance fields
.field private deleteWhen:Lj$/time/LocalDateTime;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "deleteWhen"
        required = false
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "fileName"
        required = true
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = true
    .end annotation
.end field

.field private property:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "property"
        inline = true
        name = "property"
        required = false
    .end annotation
.end field

.field private startWhen:Lj$/time/LocalDateTime;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "startWhen"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteWhen()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/FileDataType;->deleteWhen:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/FileDataType;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/FileDataType;->id:J

    return-wide v0
.end method

.method public getProperty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/FileDataType;->property:Ljava/util/List;

    return-object v0
.end method

.method public getStartWhen()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/FileDataType;->startWhen:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public setDeleteWhen(Lj$/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/FileDataType;->deleteWhen:Lj$/time/LocalDateTime;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/FileDataType;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/FileDataType;->id:J

    return-void
.end method

.method public setProperty(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/FileDataType;->property:Ljava/util/List;

    return-void
.end method

.method public setStartWhen(Lj$/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/FileDataType;->startWhen:Lj$/time/LocalDateTime;

    return-void
.end method
