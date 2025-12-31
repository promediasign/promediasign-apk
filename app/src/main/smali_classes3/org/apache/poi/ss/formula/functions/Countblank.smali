.class public final Lorg/apache/poi/ss/formula/functions/Countblank;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# static fields
.field private static final predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Countblank$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Countblank$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countblank;->predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz p1, :cond_0

    check-cast p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    sget-object p1, Lorg/apache/poi/ss/formula/functions/Countblank;->predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result p1

    :goto_0
    int-to-double p1, p1

    goto :goto_1

    :cond_0
    instance-of p1, p3, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/apache/poi/ss/formula/ThreeDEval;

    sget-object p1, Lorg/apache/poi/ss/formula/functions/Countblank;->predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result p1

    goto :goto_0

    :goto_1
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad range arg type ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
