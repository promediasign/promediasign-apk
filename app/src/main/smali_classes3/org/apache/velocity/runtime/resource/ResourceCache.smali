.class public interface abstract Lorg/apache/velocity/runtime/resource/ResourceCache;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract enumerateKeys()Ljava/util/Iterator;
.end method

.method public abstract get(Ljava/lang/Object;)Lorg/apache/velocity/runtime/resource/Resource;
.end method

.method public abstract initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V
.end method

.method public abstract put(Ljava/lang/Object;Lorg/apache/velocity/runtime/resource/Resource;)Lorg/apache/velocity/runtime/resource/Resource;
.end method

.method public abstract remove(Ljava/lang/Object;)Lorg/apache/velocity/runtime/resource/Resource;
.end method
