.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

.field public static final B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

.field public static final BASE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

.field public static final CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

.field public static final INT_AUTO:I = 0x1

.field public static final INT_B:I = 0x5

.field public static final INT_BASE:I = 0x4

.field public static final INT_CTR:I = 0x3

.field public static final INT_T:I = 0x2

.field public static final T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "sttextfontaligntypecb44type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "auto"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 22
    .line 23
    const-string v0, "t"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 30
    .line 31
    const-string v0, "ctr"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 38
    .line 39
    const-string v0, "base"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->BASE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 46
    .line 47
    const-string v0, "b"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
