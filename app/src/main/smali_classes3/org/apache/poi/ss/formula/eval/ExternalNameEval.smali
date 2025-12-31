.class public final Lorg/apache/poi/ss/formula/eval/ExternalNameEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# instance fields
.field private final _name:Lorg/apache/poi/ss/formula/EvaluationName;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    return-void
.end method


# virtual methods
.method public getName()Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    .line 7
    .line 8
    const-string v2, " ["

    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    .line 14
    .line 15
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "]"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
