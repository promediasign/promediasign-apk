.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Factory;,
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;
    }
.end annotation


# static fields
.field public static final HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

.field public static final INT_HIDDEN:I = 0x2

.field public static final INT_VERY_HIDDEN:I = 0x3

.field public static final INT_VISIBLE:I = 0x1

.field public static final VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

.field public static final VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stsheetstate158btype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "visible"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    .line 22
    .line 23
    const-string v0, "hidden"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    .line 30
    .line 31
    const-string v0, "veryHidden"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
