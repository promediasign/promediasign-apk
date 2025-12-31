.class public final Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;
    }
.end annotation


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _functionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->createFunctionsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    return-void
.end method

.method private createFunctionsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "ACCRINT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ACCRINTM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "AMORDEGRC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "AMORLINC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "AVERAGEIF"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "AVERAGEIFS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BAHTTEXT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BESSELI"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BESSELJ"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BESSELK"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BESSELY"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BIN2DEC"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BIN2HEX"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "BIN2OCT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COMPLEX"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Complex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CONVERT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUNTIFS"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Countifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUPDAYBS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUPDAYS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUPDAYSNC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUPNCD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUPNUM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "COUPPCD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBEKPIMEMBER"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBEMEMBER"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBEMEMBERPROPERTY"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBERANKEDMEMBER"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBESET"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBESETCOUNT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUBEVALUE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUMIPMT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "CUMPRINC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DEC2BIN"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DEC2HEX"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DEC2OCT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DELTA"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Delta;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DISC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DOLLARDE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DOLLARFR"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "DURATION"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "EDATE"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "EFFECT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "EOMONTH"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ERF"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ERFC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "FACTDOUBLE"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/FactDouble;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "FVSCHEDULE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "GCD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "GESTEP"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "HEX2BIN"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "HEX2DEC"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Hex2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "HEX2OCT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IFERROR"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/IfError;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMABS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMAGINARY"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Imaginary;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMARGUMENT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMCONJUGATE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMCOS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMDIV"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMEXP"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMLN"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMLOG10"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMLOG2"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMPOWER"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMPRODUCT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMREAL"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/ImReal;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMSIN"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMSQRT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMSUB"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "IMSUM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "INTRATE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ISEVEN"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_EVEN:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ISODD"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_ODD:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "JIS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "LCM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "MDURATION"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "MROUND"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/MRound;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "MULTINOMIAL"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "NETWORKDAYS"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "NOMINAL"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "OCT2BIN"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "OCT2DEC"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Oct2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "OCT2HEX"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ODDFPRICE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ODDFYIELD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ODDLPRICE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "ODDLYIELD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "PRICE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "PRICEDISC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "PRICEMAT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "QUOTIENT"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Quotient;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "RANDBETWEEN"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "RECEIVED"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "RTD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "SERIESSUM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "SQRTPI"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "SUMIFS"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "TBILLEQ"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "TBILLPRICE"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "TBILLYIELD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "WEEKNUM"

    sget-object v3, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "WORKDAY"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "XIRR"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "XNPV"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "YEARFRAC"

    sget-object v3, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "YIELD"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "YIELDDISC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v1, "YIELDMAT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    return-object v0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    instance-of v3, v3, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    if-eqz v3, :cond_0

    instance-of v3, v3, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static isATPFunction(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 4
    .line 5
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->isATPFunction(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, " is a built-in Excel function. Use FunctoinEval.registerFunction(String name, Function func) instead."

    .line 20
    .line 21
    invoke-static {p0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, " is not a function from the Excel Analysis Toolpack."

    .line 32
    .line 33
    invoke-static {p0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    instance-of v1, v1, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v0, "POI already implememts "

    .line 55
    .line 56
    const-string v1, ". You cannot override POI\'s implementations of Excel functions"

    .line 57
    .line 58
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_3
    :goto_0
    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 2

    const-string v0, "_xlfn."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-object p1
.end method
