.class public abstract Lorg/apache/velocity/runtime/resource/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final MILLIS_PER_SECOND:J = 0x3e8L


# instance fields
.field protected data:Ljava/lang/Object;

.field protected encoding:Ljava/lang/String;

.field protected lastModified:J

.field protected log:Lorg/slf4j/Logger;

.field protected modificationCheckInterval:J

.field protected name:Ljava/lang/String;

.field protected nextCheck:J

.field protected resourceLoader:Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->log:Lorg/slf4j/Logger;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/velocity/runtime/resource/Resource;->modificationCheckInterval:J

    iput-wide v1, p0, Lorg/apache/velocity/runtime/resource/Resource;->lastModified:J

    iput-wide v1, p0, Lorg/apache/velocity/runtime/resource/Resource;->nextCheck:J

    const-string v1, "UTF-8"

    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/Resource;->encoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceLoader()Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->resourceLoader:Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->type:I

    return v0
.end method

.method public isSourceModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->resourceLoader:Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z

    move-result v0

    return v0
.end method

.method public abstract process()Z
.end method

.method public requiresChecking()Z
    .locals 6

    iget-wide v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->modificationCheckInterval:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/velocity/runtime/resource/Resource;->nextCheck:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->lastModified:J

    return-void
.end method

.method public setModificationCheckInterval(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->modificationCheckInterval:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    return-void
.end method

.method public setResourceLoader(Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->resourceLoader:Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    return-void
.end method

.method public setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "loader"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/velocity/runtime/resource/Resource;->type:I

    return-void
.end method

.method public touch()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    iget-wide v4, p0, Lorg/apache/velocity/runtime/resource/Resource;->modificationCheckInterval:J

    mul-long v4, v4, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/apache/velocity/runtime/resource/Resource;->nextCheck:J

    return-void
.end method
