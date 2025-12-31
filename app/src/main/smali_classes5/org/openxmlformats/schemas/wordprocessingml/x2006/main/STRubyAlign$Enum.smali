.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v2, "center"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v4, "distributeLetter"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v6, "distributeSpace"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v8, "left"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v10, "right"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v12, "rightVertical"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;-><init>(Ljava/lang/String;I)V

    new-array v12, v13, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    invoke-direct {v0, v12}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    return-object v0
.end method
