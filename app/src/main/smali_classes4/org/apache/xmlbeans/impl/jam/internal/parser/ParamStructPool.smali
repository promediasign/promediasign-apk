.class public Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLength:I

.field private mList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mLength:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mLength:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mList:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStruct;

    invoke-direct {v1, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStruct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mList:Ljava/util/List;

    iget v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mLength:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStruct;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStruct;->init(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mLength:I

    return-void
.end method

.method public setParametersOn(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStructPool;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStruct;

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParamStruct;->createParameter(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;)Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
