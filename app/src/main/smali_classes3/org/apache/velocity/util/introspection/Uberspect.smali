.class public interface abstract Lorg/apache/velocity/util/introspection/Uberspect;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;
.end method

.method public abstract getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;
.end method

.method public abstract getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;
.end method

.method public abstract getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;
.end method

.method public abstract init()V
.end method
