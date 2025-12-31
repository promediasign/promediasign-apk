.class public Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;
.super Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GREY_50_PERCENT"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# static fields
.field public static final hexString:Ljava/lang/String;

.field public static final index:S

.field public static final index2:I

.field private static final ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

.field public static final triplet:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GREY_50_PERCENT:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;->ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    sput-short v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;->index:S

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex2()S

    move-result v1

    sput v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;->index2:I

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getTriplet()[S

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;->triplet:[S

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getHexString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;->hexString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;->ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;-><init>(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)V

    return-void
.end method
