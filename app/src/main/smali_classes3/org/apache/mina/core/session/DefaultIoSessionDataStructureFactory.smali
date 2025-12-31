.class public Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionDataStructureFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;,
        Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeMap(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSessionAttributeMap;
    .locals 0

    new-instance p1, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;

    invoke-direct {p1}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;-><init>()V

    return-object p1
.end method

.method public getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequestQueue;
    .locals 0

    new-instance p1, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;

    invoke-direct {p1}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;-><init>()V

    return-object p1
.end method
