.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
    }
.end annotation


# static fields
.field public static final CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final DASH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final DIAMOND:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final DOT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final INT_CIRCLE:I = 0x1

.field public static final INT_DASH:I = 0x2

.field public static final INT_DIAMOND:I = 0x3

.field public static final INT_DOT:I = 0x4

.field public static final INT_NONE:I = 0x5

.field public static final INT_PICTURE:I = 0x6

.field public static final INT_PLUS:I = 0x7

.field public static final INT_SQUARE:I = 0x8

.field public static final INT_STAR:I = 0x9

.field public static final INT_TRIANGLE:I = 0xa

.field public static final INT_X:I = 0xb

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final PICTURE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final PLUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final STAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final TRIANGLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final X:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stmarkerstyle177ftype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "circle"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 22
    .line 23
    const-string v0, "dash"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 30
    .line 31
    const-string v0, "diamond"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->DIAMOND:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 38
    .line 39
    const-string v0, "dot"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->DOT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 46
    .line 47
    const-string v0, "none"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 54
    .line 55
    const-string v0, "picture"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->PICTURE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 62
    .line 63
    const-string v0, "plus"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->PLUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 70
    .line 71
    const-string v0, "square"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 78
    .line 79
    const-string v0, "star"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->STAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 86
    .line 87
    const-string v0, "triangle"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->TRIANGLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 94
    .line 95
    const-string v0, "x"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->X:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
