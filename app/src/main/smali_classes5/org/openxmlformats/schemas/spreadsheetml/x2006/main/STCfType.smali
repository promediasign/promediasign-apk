.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Factory;,
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;
    }
.end annotation


# static fields
.field public static final ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final INT_ABOVE_AVERAGE:I = 0x12

.field public static final INT_BEGINS_WITH:I = 0xb

.field public static final INT_CELL_IS:I = 0x2

.field public static final INT_COLOR_SCALE:I = 0x3

.field public static final INT_CONTAINS_BLANKS:I = 0xd

.field public static final INT_CONTAINS_ERRORS:I = 0xf

.field public static final INT_CONTAINS_TEXT:I = 0x9

.field public static final INT_DATA_BAR:I = 0x4

.field public static final INT_DUPLICATE_VALUES:I = 0x8

.field public static final INT_ENDS_WITH:I = 0xc

.field public static final INT_EXPRESSION:I = 0x1

.field public static final INT_ICON_SET:I = 0x5

.field public static final INT_NOT_CONTAINS_BLANKS:I = 0xe

.field public static final INT_NOT_CONTAINS_ERRORS:I = 0x10

.field public static final INT_NOT_CONTAINS_TEXT:I = 0xa

.field public static final INT_TIME_PERIOD:I = 0x11

.field public static final INT_TOP_10:I = 0x6

.field public static final INT_UNIQUE_VALUES:I = 0x7

.field public static final NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stcftype8016type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "expression"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 22
    .line 23
    const-string v0, "cellIs"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 30
    .line 31
    const-string v0, "colorScale"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 38
    .line 39
    const-string v0, "dataBar"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 46
    .line 47
    const-string v0, "iconSet"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 54
    .line 55
    const-string v0, "top10"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 62
    .line 63
    const-string v0, "uniqueValues"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 70
    .line 71
    const-string v0, "duplicateValues"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 78
    .line 79
    const-string v0, "containsText"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 86
    .line 87
    const-string v0, "notContainsText"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 94
    .line 95
    const-string v0, "beginsWith"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 102
    .line 103
    const-string v0, "endsWith"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 110
    .line 111
    const-string v0, "containsBlanks"

    .line 112
    .line 113
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 118
    .line 119
    const-string v0, "notContainsBlanks"

    .line 120
    .line 121
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 126
    .line 127
    const-string v0, "containsErrors"

    .line 128
    .line 129
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 134
    .line 135
    const-string v0, "notContainsErrors"

    .line 136
    .line 137
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 142
    .line 143
    const-string v0, "timePeriod"

    .line 144
    .line 145
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 150
    .line 151
    const-string v0, "aboveAverage"

    .line 152
    .line 153
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    .line 158
    .line 159
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
