.class public final Lorg/apache/poi/ss/formula/eval/ErrorEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# static fields
.field public static final CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field private static final evals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            "Lorg/apache/poi/ss/formula/eval/ErrorEval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _error:Lorg/apache/poi/ss/usermodel/FormulaError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->isValidCode(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, "~non~std~err("

    .line 17
    .line 18
    const-string v1, ")~"

    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "Unhandled error type for code "

    .line 19
    .line 20
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v0

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

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
    const-class v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 7
    .line 8
    const-string v2, " ["

    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

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
