.class public Lsk/mimac/slideshow/config/model/GrabberType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "GrabberType"
.end annotation


# instance fields
.field private clearFolder:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "clearFolder"
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

.field private url:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "url"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/GrabberType;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/GrabberType;->id:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/GrabberType;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isClearFolder()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/GrabberType;->clearFolder:Z

    return v0
.end method

.method public setClearFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/GrabberType;->clearFolder:Z

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/GrabberType;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/GrabberType;->id:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/GrabberType;->url:Ljava/lang/String;

    return-void
.end method
