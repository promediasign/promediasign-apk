.class final Lorg/apache/poi/ss/usermodel/charts/DataSources$2;
.super Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;->fromStringCellRange(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$2;->getPointAt(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPointAt(I)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getStringValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNumeric()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
