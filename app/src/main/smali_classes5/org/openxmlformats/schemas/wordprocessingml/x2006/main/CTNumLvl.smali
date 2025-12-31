.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnumlvl416ctype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.end method

.method public abstract addNewStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getIlvl()Ljava/math/BigInteger;
.end method

.method public abstract getLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.end method

.method public abstract getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract isSetLvl()Z
.end method

.method public abstract isSetStartOverride()Z
.end method

.method public abstract setIlvl(Ljava/math/BigInteger;)V
.end method

.method public abstract setLvl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;)V
.end method

.method public abstract setStartOverride(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract unsetLvl()V
.end method

.method public abstract unsetStartOverride()V
.end method

.method public abstract xgetIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetIlvl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
