.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctdefinednamesce48type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewDefinedName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
.end method

.method public abstract getDefinedNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
.end method

.method public abstract getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
.end method

.method public abstract getDefinedNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewDefinedName(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
.end method

.method public abstract removeDefinedName(I)V
.end method

.method public abstract setDefinedNameArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)V
.end method

.method public abstract setDefinedNameArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)V
.end method

.method public abstract sizeOfDefinedNameArray()I
.end method
