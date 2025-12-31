.class final Landroidx/media3/common/util/GlProgram$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribute"
.end annotation


# instance fields
.field private final location:I

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Attribute;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->location:I

    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Attribute;
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b8a

    const/4 v11, 0x0

    invoke-static {p0, v2, v1, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v11

    new-array v12, v2, [B

    new-array v3, v0, [I

    new-array v5, v0, [I

    new-array v7, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v9, v12

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    new-instance v0, Ljava/lang/String;

    invoke-static {v12}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v1

    invoke-direct {v0, v12, v11, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0}, Landroidx/media3/common/util/GlProgram;->access$100(ILjava/lang/String;)I

    move-result v1

    new-instance v2, Landroidx/media3/common/util/GlProgram$Attribute;

    invoke-direct {v2, v0, v1}, Landroidx/media3/common/util/GlProgram$Attribute;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method
