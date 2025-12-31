.class public interface abstract Lorg/apache/poi/poifs/property/Parent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/property/Child;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/poifs/property/Child;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/poifs/property/Property;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addChild(Lorg/apache/poi/poifs/property/Property;)V
.end method

.method public abstract getChildren()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setNextChild(Lorg/apache/poi/poifs/property/Child;)V
.end method

.method public abstract setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V
.end method
