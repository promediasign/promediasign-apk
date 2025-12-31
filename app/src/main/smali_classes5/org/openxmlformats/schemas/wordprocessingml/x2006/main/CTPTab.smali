.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctptaba283type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment$Enum;
.end method

.method public abstract getLeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader$Enum;
.end method

.method public abstract getRelativeTo()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo$Enum;
.end method

.method public abstract setAlignment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment$Enum;)V
.end method

.method public abstract setLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader$Enum;)V
.end method

.method public abstract setRelativeTo(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo$Enum;)V
.end method

.method public abstract xgetAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment;
.end method

.method public abstract xgetLeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader;
.end method

.method public abstract xgetRelativeTo()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo;
.end method

.method public abstract xsetAlignment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment;)V
.end method

.method public abstract xsetLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader;)V
.end method

.method public abstract xsetRelativeTo(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo;)V
.end method
