.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl$Factory;
    }
.end annotation


# static fields
.field public static final EXTENSION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final INT_EXTENSION:I = 0x2

.field public static final INT_LIST:I = 0x4

.field public static final INT_RESTRICTION:I = 0x3

.field public static final INT_UNION:I = 0x5

.field public static final LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$TypeDerivationControl:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.TypeDerivationControl"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$TypeDerivationControl:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "typederivationcontrol3239type"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->EXTENSION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 26
    .line 27
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl;->EXTENSION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 28
    .line 29
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 30
    .line 31
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 32
    .line 33
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 34
    .line 35
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 36
    .line 37
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 38
    .line 39
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TypeDerivationControl;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 40
    .line 41
    return-void
.end method
