.class public final Lorg/apache/poi/hssf/util/AreaReference;
.super Lorg/apache/poi/ss/util/AreaReference;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/util/CellReference;Lorg/apache/poi/hssf/util/CellReference;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V

    return-void
.end method
