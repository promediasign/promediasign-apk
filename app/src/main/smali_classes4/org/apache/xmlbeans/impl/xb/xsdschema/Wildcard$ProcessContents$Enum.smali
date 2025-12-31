.class public final Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;
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
    .locals 8

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    const-string v2, "skip"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    const-string v4, "lax"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    const-string v6, "strict"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;-><init>(Ljava/lang/String;I)V

    new-array v6, v7, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    invoke-direct {v0, v6}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;->forInt(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;

    move-result-object v0

    return-object v0
.end method
