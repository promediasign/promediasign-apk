.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Factory;,
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;
    }
.end annotation


# static fields
.field public static final BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final GREATER_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final GREATER_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final INT_BEGINS_WITH:I = 0xb

.field public static final INT_BETWEEN:I = 0x7

.field public static final INT_CONTAINS_TEXT:I = 0x9

.field public static final INT_ENDS_WITH:I = 0xc

.field public static final INT_EQUAL:I = 0x3

.field public static final INT_GREATER_THAN:I = 0x6

.field public static final INT_GREATER_THAN_OR_EQUAL:I = 0x5

.field public static final INT_LESS_THAN:I = 0x1

.field public static final INT_LESS_THAN_OR_EQUAL:I = 0x2

.field public static final INT_NOT_BETWEEN:I = 0x8

.field public static final INT_NOT_CONTAINS:I = 0xa

.field public static final INT_NOT_EQUAL:I = 0x4

.field public static final LESS_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final LESS_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final NOT_BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final NOT_CONTAINS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final NOT_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stconditionalformattingoperatora99etype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "lessThan"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->LESS_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 22
    .line 23
    const-string v0, "lessThanOrEqual"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->LESS_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 30
    .line 31
    const-string v0, "equal"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 38
    .line 39
    const-string v0, "notEqual"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 46
    .line 47
    const-string v0, "greaterThanOrEqual"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->GREATER_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 54
    .line 55
    const-string v0, "greaterThan"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->GREATER_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 62
    .line 63
    const-string v0, "between"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 70
    .line 71
    const-string v0, "notBetween"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 78
    .line 79
    const-string v0, "containsText"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 86
    .line 87
    const-string v0, "notContains"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_CONTAINS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 94
    .line 95
    const-string v0, "beginsWith"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 102
    .line 103
    const-string v0, "endsWith"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
