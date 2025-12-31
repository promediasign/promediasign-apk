.class public Lorg/apache/velocity/runtime/resource/ResourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(Ljava/lang/String;I)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    new-instance p0, Lorg/apache/velocity/runtime/resource/ContentResource;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/ContentResource;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/velocity/exception/VelocityException;

    const-string p1, "invalide resource type"

    invoke-direct {p0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/velocity/Template;

    invoke-direct {p0}, Lorg/apache/velocity/Template;-><init>()V

    :goto_0
    return-object p0
.end method
