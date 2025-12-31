.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Factory;,
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$TestsDocument:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$TestsDocument:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "tests5621doctype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewTests()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;
.end method

.method public abstract getTests()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;
.end method

.method public abstract setTests(Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;)V
.end method
