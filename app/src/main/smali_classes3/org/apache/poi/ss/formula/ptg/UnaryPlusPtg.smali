.class public final Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

.field public static final sid:B = 0x12t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

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

    const/16 v0, 0x12

    return v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
