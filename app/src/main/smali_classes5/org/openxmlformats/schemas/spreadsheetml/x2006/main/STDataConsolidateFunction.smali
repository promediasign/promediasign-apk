.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Factory;,
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;
    }
.end annotation


# static fields
.field public static final AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final COUNT_NUMS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final INT_AVERAGE:I = 0x1

.field public static final INT_COUNT:I = 0x2

.field public static final INT_COUNT_NUMS:I = 0x3

.field public static final INT_MAX:I = 0x4

.field public static final INT_MIN:I = 0x5

.field public static final INT_PRODUCT:I = 0x6

.field public static final INT_STD_DEV:I = 0x7

.field public static final INT_STD_DEVP:I = 0x8

.field public static final INT_SUM:I = 0x9

.field public static final INT_VAR:I = 0xa

.field public static final INT_VARP:I = 0xb

.field public static final MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final STD_DEVP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final VARP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stdataconsolidatefunction1206type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "average"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 22
    .line 23
    const-string v0, "count"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 30
    .line 31
    const-string v0, "countNums"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->COUNT_NUMS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 38
    .line 39
    const-string v0, "max"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 46
    .line 47
    const-string v0, "min"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 54
    .line 55
    const-string v0, "product"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 62
    .line 63
    const-string v0, "stdDev"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 70
    .line 71
    const-string v0, "stdDevp"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->STD_DEVP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 78
    .line 79
    const-string v0, "sum"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 86
    .line 87
    const-string v0, "var"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 94
    .line 95
    const-string v0, "varp"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->VARP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
