.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctruby9dcetype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewRt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;
.end method

.method public abstract addNewRubyBase()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;
.end method

.method public abstract addNewRubyPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;
.end method

.method public abstract getRt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;
.end method

.method public abstract getRubyBase()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;
.end method

.method public abstract getRubyPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;
.end method

.method public abstract setRt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;)V
.end method

.method public abstract setRubyBase(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;)V
.end method

.method public abstract setRubyPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;)V
.end method
