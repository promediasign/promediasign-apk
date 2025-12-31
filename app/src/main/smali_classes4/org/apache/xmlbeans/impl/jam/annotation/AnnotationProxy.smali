.class public abstract Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SINGLE_MEMBER_NAME:Ljava/lang/String; = "value"


# instance fields
.field protected mContext:Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->mContext:Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->getValues()[Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, v0, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getValues()[Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;
.end method

.method public init(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->mContext:Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null logger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V
.end method
