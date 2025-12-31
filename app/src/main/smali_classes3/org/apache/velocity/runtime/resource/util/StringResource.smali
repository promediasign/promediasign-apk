.class public final Lorg/apache/velocity/runtime/resource/util/StringResource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private body:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private lastModified:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/resource/util/StringResource;->setBody(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/resource/util/StringResource;->setEncoding(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->lastModified:J

    return-wide v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->body:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->lastModified:J

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/velocity/runtime/resource/util/StringResource;->lastModified:J

    return-void
.end method
