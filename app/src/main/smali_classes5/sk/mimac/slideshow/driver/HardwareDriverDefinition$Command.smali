.class public Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private maxRetries:I

.field private name:Ljava/lang/String;

.field private poll:Z

.field private request:Ljava/lang/String;

.field private requestMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;",
            ">;"
        }
    .end annotation
.end field

.field private responseMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I

.field private waitInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxRetries()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->maxRetries:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->request:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->requestMapping:Ljava/util/List;

    return-object v0
.end method

.method public getResponseMapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->responseMapping:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->timeout:I

    return v0
.end method

.method public getWaitInterval()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->waitInterval:I

    return v0
.end method

.method public isPoll()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->poll:Z

    return v0
.end method

.method public setMaxRetries(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->maxRetries:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->name:Ljava/lang/String;

    return-void
.end method

.method public setPoll(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->poll:Z

    return-void
.end method

.method public setRequest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->request:Ljava/lang/String;

    return-void
.end method

.method public setRequestMapping(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->requestMapping:Ljava/util/List;

    return-void
.end method

.method public setResponseMapping(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->responseMapping:Ljava/util/List;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->timeout:I

    return-void
.end method

.method public setWaitInterval(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->waitInterval:I

    return-void
.end method
