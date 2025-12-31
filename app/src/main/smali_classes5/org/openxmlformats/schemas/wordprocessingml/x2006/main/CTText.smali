.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttext7f5btype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getSpace()Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space$Enum;
.end method

.method public abstract isSetSpace()Z
.end method

.method public abstract setSpace(Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space$Enum;)V
.end method

.method public abstract unsetSpace()V
.end method

.method public abstract xgetSpace()Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space;
.end method

.method public abstract xsetSpace(Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space;)V
.end method
