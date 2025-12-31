.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Factory;,
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;
    }
.end annotation


# static fields
.field public static final AVG:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final BLANK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final COUNT_A:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final DATA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final GRAND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final INT_AVG:I = 0x5

.field public static final INT_BLANK:I = 0xf

.field public static final INT_COUNT:I = 0x9

.field public static final INT_COUNT_A:I = 0x4

.field public static final INT_DATA:I = 0x1

.field public static final INT_DEFAULT:I = 0x2

.field public static final INT_GRAND:I = 0xe

.field public static final INT_MAX:I = 0x6

.field public static final INT_MIN:I = 0x7

.field public static final INT_PRODUCT:I = 0x8

.field public static final INT_STD_DEV:I = 0xa

.field public static final INT_STD_DEV_P:I = 0xb

.field public static final INT_SUM:I = 0x3

.field public static final INT_VAR:I = 0xc

.field public static final INT_VAR_P:I = 0xd

.field public static final MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final STD_DEV_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final VAR_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stitemtype6186type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "data"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DATA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 22
    .line 23
    const-string v0, "default"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 30
    .line 31
    const-string v0, "sum"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 38
    .line 39
    const-string v0, "countA"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->COUNT_A:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 46
    .line 47
    const-string v0, "avg"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->AVG:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 54
    .line 55
    const-string v0, "max"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 62
    .line 63
    const-string v0, "min"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 70
    .line 71
    const-string v0, "product"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 78
    .line 79
    const-string v0, "count"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 86
    .line 87
    const-string v0, "stdDev"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 94
    .line 95
    const-string v0, "stdDevP"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->STD_DEV_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 102
    .line 103
    const-string v0, "var"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 110
    .line 111
    const-string v0, "varP"

    .line 112
    .line 113
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->VAR_P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 118
    .line 119
    const-string v0, "grand"

    .line 120
    .line 121
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->GRAND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 126
    .line 127
    const-string v0, "blank"

    .line 128
    .line 129
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->BLANK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
