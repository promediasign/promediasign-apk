.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlNMTOKEN;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Factory;,
        Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;
    }
.end annotation


# static fields
.field public static final EXTENSION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final INT_EXTENSION:I = 0x2

.field public static final INT_LIST:I = 0x4

.field public static final INT_RESTRICTION:I = 0x3

.field public static final INT_SUBSTITUTION:I = 0x1

.field public static final INT_UNION:I = 0x5

.field public static final LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final SUBSTITUTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$DerivationControl:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.DerivationControl"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$DerivationControl:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "derivationcontrola5dftype"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    const-string v0, "substitution"

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->SUBSTITUTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 32
    .line 33
    const-string v0, "extension"

    .line 34
    .line 35
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->EXTENSION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 40
    .line 41
    const-string v0, "restriction"

    .line 42
    .line 43
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 48
    .line 49
    const-string v0, "list"

    .line 50
    .line 51
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 56
    .line 57
    const-string v0, "union"

    .line 58
    .line 59
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
