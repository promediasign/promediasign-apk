.class Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopLeftCellAddressComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/ss/util/CellAddress;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    check-cast p2, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;->compare(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/ss/util/CellAddress;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p2

    if-le p1, p2, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
