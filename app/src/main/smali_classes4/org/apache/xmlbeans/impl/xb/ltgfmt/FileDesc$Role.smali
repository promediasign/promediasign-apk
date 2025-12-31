.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Factory;,
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

.field public static final INT_INSTANCE:I = 0x2

.field public static final INT_RESOURCE:I = 0x3

.field public static final INT_SCHEMA:I = 0x1

.field public static final RESOURCE:Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

.field public static final SCHEMA:Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$FileDesc$Role:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.ltgfmt.FileDesc$Role"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$FileDesc$Role:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "role21a8attrtype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    const-string v0, "schema"

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;->SCHEMA:Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    .line 32
    .line 33
    const-string v0, "instance"

    .line 34
    .line 35
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;->INSTANCE:Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    .line 40
    .line 41
    const-string v0, "resource"

    .line 42
    .line 43
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;->RESOURCE:Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
