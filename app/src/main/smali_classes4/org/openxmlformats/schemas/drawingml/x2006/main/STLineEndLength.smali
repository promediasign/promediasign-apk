.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;
    }
.end annotation


# static fields
.field public static final INT_LG:I = 0x3

.field public static final INT_MED:I = 0x2

.field public static final INT_SM:I = 0x1

.field public static final LG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

.field public static final MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

.field public static final SM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stlineendlength3f2etype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "sm"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->SM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    .line 22
    .line 23
    const-string v0, "med"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    .line 30
    .line 31
    const-string v0, "lg"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->LG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
