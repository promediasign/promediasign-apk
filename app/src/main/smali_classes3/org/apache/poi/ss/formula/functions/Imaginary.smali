.class public Lorg/apache/poi/ss/formula/functions/Imaginary;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field public static final GROUP1_REAL_SIGN:I = 0x1

.field public static final GROUP1_REAL_SIGN_REGEX:Ljava/lang/String; = "([+-]?)"

.field public static final GROUP2_IMAGINARY_INTEGER_OR_DOUBLE:I = 0x2

.field public static final GROUP2_REAL_INTEGER_OR_DOUBLE_REGEX:Ljava/lang/String; = "([0-9]+\\.[0-9]+|[0-9]*)"

.field public static final GROUP3_IMAGINARY_SIGN:I = 0x3

.field public static final GROUP3_IMAGINARY_SIGN_REGEX:Ljava/lang/String; = "([+-]?)"

.field public static final GROUP4_IMAGINARY_INTEGER_OR_DOUBLE:I = 0x4

.field public static final GROUP4_IMAGINARY_INTEGER_OR_DOUBLE_REGEX:Ljava/lang/String; = "([0-9]+\\.[0-9]+|[0-9]*)"

.field public static final GROUP5_IMAGINARY_GROUP_REGEX:Ljava/lang/String; = "([ij]?)"

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Imaginary;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Imaginary;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Imaginary;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v0, "([+-]?)([0-9]+\\.[0-9]+|[0-9]*)([+-]?)([0-9]+\\.[0-9]+|[0-9]*)([ij]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Imaginary;->COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/formula/functions/Imaginary;->COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_6

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "j"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string p2, ""

    if-eqz p3, :cond_5

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object p2, p3

    :cond_3
    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    const-string p1, "1"

    goto :goto_1

    :cond_5
    :goto_2
    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/poi/ss/formula/functions/Imaginary;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method
