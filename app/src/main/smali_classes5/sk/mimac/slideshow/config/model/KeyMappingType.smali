.class public Lsk/mimac/slideshow/config/model/KeyMappingType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "KeyMappingType"
.end annotation


# instance fields
.field private actionDown:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "actionDown"
        required = true
    .end annotation
.end field

.field private actionUp:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "actionUp"
        required = false
    .end annotation
.end field

.field private keyCode:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "keyCode"
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
.method public getActionDown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->actionDown:Ljava/lang/String;

    return-object v0
.end method

.method public getActionUp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->actionUp:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->keyCode:I

    return v0
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

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->property:Ljava/util/List;

    return-object v0
.end method

.method public setActionDown(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->actionDown:Ljava/lang/String;

    return-void
.end method

.method public setActionUp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->actionUp:Ljava/lang/String;

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->keyCode:I

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

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/KeyMappingType;->property:Ljava/util/List;

    return-void
.end method
