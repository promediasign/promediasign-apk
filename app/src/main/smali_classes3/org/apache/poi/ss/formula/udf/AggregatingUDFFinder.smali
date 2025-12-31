.class public Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# static fields
.field public static final DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _usedToolPacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/poi/ss/formula/udf/UDFFinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    sput-object v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/udf/UDFFinder;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/udf/UDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
