.class public final Lcom/google/android/gms/common/internal/zaaa;
.super Landroid/widget/Button;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final zab(IIII)I
    .locals 0

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p0, p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    return p3

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Unknown color scheme: "

    .line 13
    .line 14
    invoke-static {p0, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    return p2

    .line 23
    :cond_2
    return p1
.end method


# virtual methods
.method public final zaa(Landroid/content/res/Resources;II)V
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x41600000    # 14.0f

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 16
    .line 17
    const/high16 v1, 0x42400000    # 48.0f

    .line 18
    .line 19
    mul-float v0, v0, v1

    .line 20
    .line 21
    const/high16 v1, 0x3f000000    # 0.5f

    .line 22
    .line 23
    add-float/2addr v0, v1

    .line 24
    float-to-int v0, v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 29
    .line 30
    .line 31
    sget v0, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_dark:I

    .line 32
    .line 33
    sget v1, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    .line 34
    .line 35
    invoke-static {p3, v0, v1, v1}, Lcom/google/android/gms/common/internal/zaaa;->zab(IIII)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sget v1, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_dark:I

    .line 40
    .line 41
    sget v2, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    .line 42
    .line 43
    invoke-static {p3, v1, v2, v2}, Lcom/google/android/gms/common/internal/zaaa;->zab(IIII)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "Unknown button size: "

    .line 48
    .line 49
    const/4 v3, 0x2

    .line 50
    const/4 v4, 0x1

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    if-eq p2, v4, :cond_1

    .line 54
    .line 55
    if-ne p2, v3, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-static {p2, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    move v0, v1

    .line 69
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget v1, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_tint:I

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    sget v0, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_dark:I

    .line 95
    .line 96
    sget v1, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    .line 97
    .line 98
    invoke-static {p3, v0, v1, v1}, Lcom/google/android/gms/common/internal/zaaa;->zab(IIII)I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Landroid/content/res/ColorStateList;

    .line 111
    .line 112
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    .line 114
    .line 115
    const/4 p3, 0x0

    .line 116
    if-eqz p2, :cond_4

    .line 117
    .line 118
    if-eq p2, v4, :cond_3

    .line 119
    .line 120
    if-ne p2, v3, :cond_2

    .line 121
    .line 122
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    invoke-static {p2, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_3
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text_long:I

    .line 137
    .line 138
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text:I

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_2
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    const/16 p1, 0x13

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    .line 166
    .line 167
    :cond_5
    return-void
.end method
