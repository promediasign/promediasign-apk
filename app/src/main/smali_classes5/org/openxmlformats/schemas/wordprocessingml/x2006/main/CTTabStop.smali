.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttabstop5ebbtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getLeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc$Enum;
.end method

.method public abstract getPos()Ljava/math/BigInteger;
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc$Enum;
.end method

.method public abstract isSetLeader()Z
.end method

.method public abstract setLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc$Enum;)V
.end method

.method public abstract setPos(Ljava/math/BigInteger;)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc$Enum;)V
.end method

.method public abstract unsetLeader()V
.end method

.method public abstract xgetLeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc;
.end method

.method public abstract xgetPos()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc;
.end method

.method public abstract xsetLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc;)V
.end method

.method public abstract xsetPos(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc;)V
.end method
