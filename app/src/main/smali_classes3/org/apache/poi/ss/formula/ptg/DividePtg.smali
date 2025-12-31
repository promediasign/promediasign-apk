.class public final Lorg/apache/poi/ss/formula/ptg/DividePtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

.field public static final sid:B = 0x6t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/DividePtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/DividePtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

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

    const/4 v0, 0x2

    return v0
.end method

.method public getSid()B
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
