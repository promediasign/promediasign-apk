.class public final Lorg/apache/poi/ss/formula/functions/Errortype;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private translateErrorCodeToErrorTypeValue(I)I
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Errortype$1;->$SwitchMap$org$apache$poi$ss$usermodel$FormulaError:[I

    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Invalid error code ("

    .line 19
    .line 20
    const-string v2, ")"

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :pswitch_0
    const/4 p1, 0x7

    .line 31
    return p1

    .line 32
    :pswitch_1
    const/4 p1, 0x6

    .line 33
    return p1

    .line 34
    :pswitch_2
    const/4 p1, 0x5

    .line 35
    return p1

    .line 36
    :pswitch_3
    const/4 p1, 0x4

    .line 37
    return p1

    .line 38
    :pswitch_4
    const/4 p1, 0x3

    .line 39
    return p1

    .line 40
    :pswitch_5
    const/4 p1, 0x2

    .line 41
    return p1

    .line 42
    :pswitch_6
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/Errortype;->translateErrorCodeToErrorTypeValue(I)I

    move-result p1

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2
.end method
