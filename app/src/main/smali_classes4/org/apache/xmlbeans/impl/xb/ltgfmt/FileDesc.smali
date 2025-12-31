.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Factory;,
        Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$FileDesc:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.ltgfmt.FileDesc"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$1;->class$org$apache$xmlbeans$impl$xb$ltgfmt$FileDesc:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "filedesc9392type"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewCode()Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;
.end method

.method public abstract getCode()Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFolder()Ljava/lang/String;
.end method

.method public abstract getRole()Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;
.end method

.method public abstract getTsDir()Ljava/lang/String;
.end method

.method public abstract getValidity()Z
.end method

.method public abstract isSetCode()Z
.end method

.method public abstract isSetFileName()Z
.end method

.method public abstract isSetFolder()Z
.end method

.method public abstract isSetRole()Z
.end method

.method public abstract isSetTsDir()Z
.end method

.method public abstract isSetValidity()Z
.end method

.method public abstract setCode(Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;)V
.end method

.method public abstract setFileName(Ljava/lang/String;)V
.end method

.method public abstract setFolder(Ljava/lang/String;)V
.end method

.method public abstract setRole(Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;)V
.end method

.method public abstract setTsDir(Ljava/lang/String;)V
.end method

.method public abstract setValidity(Z)V
.end method

.method public abstract unsetCode()V
.end method

.method public abstract unsetFileName()V
.end method

.method public abstract unsetFolder()V
.end method

.method public abstract unsetRole()V
.end method

.method public abstract unsetTsDir()V
.end method

.method public abstract unsetValidity()V
.end method

.method public abstract xgetFileName()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetFolder()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetRole()Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;
.end method

.method public abstract xgetTsDir()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetValidity()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFileName(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetFolder(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetRole(Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role;)V
.end method

.method public abstract xsetTsDir(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetValidity(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
