.class public final Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

.field public static final sid:B = 0x15t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "()"

    return-object v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const-string v1, ")"

    .line 2
    invoke-static {p1, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x15

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method
