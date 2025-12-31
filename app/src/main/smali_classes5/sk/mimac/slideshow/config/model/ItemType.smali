.class public Lsk/mimac/slideshow/config/model/ItemType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "ItemType"
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "description"
        required = true
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

.field private itemType:Lsk/mimac/slideshow/config/model/ItemTypeType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "itemType"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ItemType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ItemType;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/ItemType;->id:J

    return-wide v0
.end method

.method public getItemType()Lsk/mimac/slideshow/config/model/ItemTypeType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ItemType;->itemType:Lsk/mimac/slideshow/config/model/ItemTypeType;

    return-object v0
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

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ItemType;->property:Ljava/util/List;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ItemType;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ItemType;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/ItemType;->id:J

    return-void
.end method

.method public setItemType(Lsk/mimac/slideshow/config/model/ItemTypeType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ItemType;->itemType:Lsk/mimac/slideshow/config/model/ItemTypeType;

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

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ItemType;->property:Ljava/util/List;

    return-void
.end method
