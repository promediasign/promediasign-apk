.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
    }
.end annotation


# static fields
.field public static final FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final INT_FALSE:I = 0x2

.field public static final INT_OFF:I = 0x4

.field public static final INT_ON:I = 0x3

.field public static final INT_TRUE:I = 0x1

.field public static final INT_X_0:I = 0x5

.field public static final INT_X_1:I = 0x6

.field public static final OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final X_0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stonofffcd2type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "true"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 22
    .line 23
    const-string v0, "false"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 30
    .line 31
    const-string v0, "on"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 38
    .line 39
    const-string v0, "off"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 46
    .line 47
    const-string v0, "0"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 54
    .line 55
    const-string v0, "1"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
