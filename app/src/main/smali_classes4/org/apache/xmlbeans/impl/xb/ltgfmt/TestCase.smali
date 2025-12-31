.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Factory;,
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Files;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$TestCase:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.ltgfmt.TestCase"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$TestCase:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "testcase939btype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewFiles()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Files;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFiles()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Files;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getModified()Z
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetModified()Z
.end method

.method public abstract isSetOrigin()Z
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setFiles(Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Files;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setModified(Z)V
.end method

.method public abstract setOrigin(Ljava/lang/String;)V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetModified()V
.end method

.method public abstract unsetOrigin()V
.end method

.method public abstract xgetDescription()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetModified()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOrigin()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xsetDescription(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetModified(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOrigin(Lorg/apache/xmlbeans/XmlToken;)V
.end method
