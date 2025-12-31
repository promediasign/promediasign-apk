.class public final Lorg/apache/poi/ss/formula/ptg/AreaPtg;
.super Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x25s


# direct methods
.method public constructor <init>(IIIIZZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(IIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public getSid()B
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
