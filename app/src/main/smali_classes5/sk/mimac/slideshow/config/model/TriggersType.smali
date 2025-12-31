.class public Lsk/mimac/slideshow/config/model/TriggersType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "TriggersType"
.end annotation


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "code"
        required = true
    .end annotation
.end field

.field private workspace:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "workspace"
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
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/TriggersType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/TriggersType;->workspace:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/TriggersType;->code:Ljava/lang/String;

    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/TriggersType;->workspace:Ljava/lang/String;

    return-void
.end method
