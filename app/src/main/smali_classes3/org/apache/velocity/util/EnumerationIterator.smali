.class public Lorg/apache/velocity/util/EnumerationIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private enumeration:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
