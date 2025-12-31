.class public Lorg/apache/poi/ss/formula/eval/RefListEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/RefListEval;->add(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/eval/RefListEval;->add(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-void
.end method

.method private add(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefListEval;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/RefListEval;

    iget-object p1, p1, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    return-object v0
.end method
