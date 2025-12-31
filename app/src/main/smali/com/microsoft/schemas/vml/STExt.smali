.class public interface abstract Lcom/microsoft/schemas/vml/STExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STExt$Enum;
    }
.end annotation


# static fields
.field public static final BACKWARD_COMPATIBLE:Lcom/microsoft/schemas/vml/STExt$Enum;

.field public static final EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

.field public static final VIEW:Lcom/microsoft/schemas/vml/STExt$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/microsoft/schemas/vml/STExt;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stext2fe5type"

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
    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "view"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/microsoft/schemas/vml/STExt$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STExt$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->VIEW:Lcom/microsoft/schemas/vml/STExt$Enum;

    .line 22
    .line 23
    const-string v0, "edit"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/microsoft/schemas/vml/STExt$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STExt$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    .line 30
    .line 31
    const-string v0, "backwardCompatible"

    .line 32
    .line 33
    invoke-static {v0}, Lcom/microsoft/schemas/vml/STExt$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STExt$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->BACKWARD_COMPATIBLE:Lcom/microsoft/schemas/vml/STExt$Enum;

    .line 38
    .line 39
    return-void
.end method
