.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;
    }
.end annotation


# static fields
.field public static final BOTH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final DISTRIBUTE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final HIGH_KASHIDA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final INT_BOTH:I = 0x4

.field public static final INT_CENTER:I = 0x2

.field public static final INT_DISTRIBUTE:I = 0x6

.field public static final INT_HIGH_KASHIDA:I = 0x8

.field public static final INT_LEFT:I = 0x1

.field public static final INT_LOW_KASHIDA:I = 0x9

.field public static final INT_MEDIUM_KASHIDA:I = 0x5

.field public static final INT_NUM_TAB:I = 0x7

.field public static final INT_RIGHT:I = 0x3

.field public static final INT_THAI_DISTRIBUTE:I = 0xa

.field public static final LEFT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final LOW_KASHIDA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final MEDIUM_KASHIDA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final NUM_TAB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final THAI_DISTRIBUTE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stjc977ftype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "left"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->LEFT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 22
    .line 23
    const-string v0, "center"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 30
    .line 31
    const-string v0, "right"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 38
    .line 39
    const-string v0, "both"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->BOTH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 46
    .line 47
    const-string v0, "mediumKashida"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->MEDIUM_KASHIDA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 54
    .line 55
    const-string v0, "distribute"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->DISTRIBUTE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 62
    .line 63
    const-string v0, "numTab"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->NUM_TAB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 70
    .line 71
    const-string v0, "highKashida"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->HIGH_KASHIDA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 78
    .line 79
    const-string v0, "lowKashida"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->LOW_KASHIDA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 86
    .line 87
    const-string v0, "thaiDistribute"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc;->THAI_DISTRIBUTE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
