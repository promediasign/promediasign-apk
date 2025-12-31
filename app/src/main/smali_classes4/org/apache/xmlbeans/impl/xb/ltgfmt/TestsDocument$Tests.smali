.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tests"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$TestsDocument$Tests:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument$Tests"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$TestsDocument$Tests:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "tests9d6eelemtype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewTest()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract getTestArray(I)Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract getTestArray()[Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract insertNewTest(I)Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract removeTest(I)V
.end method

.method public abstract setTestArray(ILorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;)V
.end method

.method public abstract setTestArray([Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;)V
.end method

.method public abstract sizeOfTestArray()I
.end method
