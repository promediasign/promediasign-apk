.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;
    }
.end annotation


# static fields
.field public static final COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

.field public static final FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

.field public static final INT_COMMENTS:I = 0x3

.field public static final INT_FORMS:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final INT_READ_ONLY:I = 0x2

.field public static final INT_TRACKED_CHANGES:I = 0x4

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

.field public static final READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

.field public static final TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stdocprotect5801type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "none"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 22
    .line 23
    const-string v0, "readOnly"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 30
    .line 31
    const-string v0, "comments"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 38
    .line 39
    const-string v0, "trackedChanges"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 46
    .line 47
    const-string v0, "forms"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
