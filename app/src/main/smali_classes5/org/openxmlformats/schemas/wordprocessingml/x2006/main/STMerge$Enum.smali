.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    const-string v2, "continue"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    const-string v4, "restart"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;-><init>(Ljava/lang/String;I)V

    new-array v4, v5, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v3

    invoke-direct {v0, v4}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    move-result-object v0

    return-object v0
.end method
