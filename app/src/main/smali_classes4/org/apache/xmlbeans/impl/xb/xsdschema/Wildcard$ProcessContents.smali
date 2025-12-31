.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlNMTOKEN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessContents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Factory;,
        Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;
    }
.end annotation


# static fields
.field public static final INT_LAX:I = 0x2

.field public static final INT_SKIP:I = 0x1

.field public static final INT_STRICT:I = 0x3

.field public static final LAX:Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

.field public static final SKIP:Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

.field public static final STRICT:Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$Wildcard$ProcessContents:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.Wildcard$ProcessContents"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$Wildcard$ProcessContents:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "processcontents864aattrtype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    const-string v0, "skip"

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;->SKIP:Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    .line 32
    .line 33
    const-string v0, "lax"

    .line 34
    .line 35
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;->LAX:Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    .line 40
    .line 41
    const-string v0, "strict"

    .line 42
    .line 43
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;->STRICT:Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
