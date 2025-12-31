.class public interface abstract Lorg/apache/velocity/runtime/resource/ResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESOURCE_CONTENT:I = 0x2

.field public static final RESOURCE_TEMPLATE:I = 0x1


# virtual methods
.method public abstract getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;
.end method

.method public abstract initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V
.end method
