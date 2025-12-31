.class public final Lorg/apache/poi/ss/formula/ptg/PercentPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "SourceFile"


# static fields
.field public static final SIZE:I = 0x1

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

.field public static final sid:B = 0x14t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/PercentPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfOperands()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSid()B
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object p1, p1, v1

    .line 8
    .line 9
    const-string v1, "%"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
