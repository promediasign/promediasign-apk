.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;
    }
.end annotation


# static fields
.field public static final CLIP:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

.field public static final ELLIPSIS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

.field public static final INT_CLIP:I = 0x3

.field public static final INT_ELLIPSIS:I = 0x2

.field public static final INT_OVERFLOW:I = 0x1

.field public static final OVERFLOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "sttextvertoverflowtype2725type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "overflow"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;->OVERFLOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    .line 22
    .line 23
    const-string v0, "ellipsis"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;->ELLIPSIS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    .line 30
    .line 31
    const-string v0, "clip"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;->CLIP:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
