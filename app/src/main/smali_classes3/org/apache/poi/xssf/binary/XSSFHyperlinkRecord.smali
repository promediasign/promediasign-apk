.class public Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private display:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private final relId:Ljava/lang/String;

.field private toolTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_5

    :cond_1
    check-cast p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    :cond_9
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_a
    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_c
    :goto_5
    return v1
.end method

.method public getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    return-object v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "XSSFHyperlinkRecord{cellRangeAddress="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", relId=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', location=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', toolTip=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', display=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "\'}"

    .line 51
    .line 52
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
