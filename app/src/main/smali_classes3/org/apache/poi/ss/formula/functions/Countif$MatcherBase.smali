.class abstract Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MatcherBase"
.end annotation


# instance fields
.field private final _operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    return-void
.end method


# virtual methods
.method public final evaluate(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->evaluate(I)Z

    move-result p1

    return p1
.end method

.method public final evaluate(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->evaluate(Z)Z

    move-result p1

    return p1
.end method

.method public final getCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getCode()I

    move-result v0

    return v0
.end method

.method public abstract getValueText()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    const-string v1, " ["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getRepresentation()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->getValueText()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "]"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
