.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item$Factory;
    }
.end annotation


# static fields
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
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$SimpleDerivationSet$Member2$Item:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.SimpleDerivationSet$Member2$Item"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$SimpleDerivationSet$Member2$Item:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "anonf38etype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 26
    .line 27
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 28
    .line 29
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 30
    .line 31
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 32
    .line 33
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 34
    .line 35
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    .line 36
    .line 37
    return-void
.end method
