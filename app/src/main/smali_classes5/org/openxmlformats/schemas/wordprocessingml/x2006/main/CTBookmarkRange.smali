.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmarkRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmarkRange$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmarkRange;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctbookmarkranged88btype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmarkRange;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getColFirst()Ljava/math/BigInteger;
.end method

.method public abstract getColLast()Ljava/math/BigInteger;
.end method

.method public abstract isSetColFirst()Z
.end method

.method public abstract isSetColLast()Z
.end method

.method public abstract setColFirst(Ljava/math/BigInteger;)V
.end method

.method public abstract setColLast(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetColFirst()V
.end method

.method public abstract unsetColLast()V
.end method

.method public abstract xgetColFirst()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetColLast()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetColFirst(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetColLast(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
