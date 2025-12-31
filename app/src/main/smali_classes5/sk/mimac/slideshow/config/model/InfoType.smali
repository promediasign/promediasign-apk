.class public Lsk/mimac/slideshow/config/model/InfoType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "InfoType"
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "description"
        required = false
    .end annotation
.end field

.field private exported:Lj$/time/LocalDateTime;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "exported"
        required = false
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "version"
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

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/InfoType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExported()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/InfoType;->exported:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/InfoType;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/InfoType;->description:Ljava/lang/String;

    return-void
.end method

.method public setExported(Lj$/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/InfoType;->exported:Lj$/time/LocalDateTime;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/InfoType;->version:Ljava/lang/String;

    return-void
.end method
