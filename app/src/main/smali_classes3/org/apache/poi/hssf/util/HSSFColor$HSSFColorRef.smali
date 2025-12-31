.class Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HSSFColorRef"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex2()S

    move-result v1

    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->access$100(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->access$000(Lorg/apache/poi/hssf/util/HSSFColor;)Ljava/awt/Color;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>(IILjava/awt/Color;)V

    return-void
.end method
