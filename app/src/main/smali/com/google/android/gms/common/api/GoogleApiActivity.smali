.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field protected zaa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    return-void
.end method

.method public static zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "pending_intent"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "failing_client_id"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "notify_manager"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private final zab()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "GoogleApiActivity"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Activity started without extras"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v2, "pending_intent"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/app/PendingIntent;

    .line 29
    .line 30
    const-string v3, "error_code"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "Activity started without resolution"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v7, 0x1

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    move-object v5, p0

    .line 65
    invoke-virtual/range {v5 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 66
    .line 67
    .line 68
    iput v4, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :catch_1
    move-exception v3

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string v2, "Failed to launch pendingIntent"

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_2
    const-string v5, "notify_manager"

    .line 85
    .line 86
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 97
    .line 98
    const/16 v2, 0x16

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "failing_client_id"

    .line 109
    .line 110
    const/4 v5, -0x1

    .line 111
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaz(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v2, "Activity not found while launching "

    .line 124
    .line 125
    const-string v5, "."

    .line 126
    .line 127
    invoke-static {v2, v0, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 132
    .line 133
    const-string v5, "generic"

    .line 134
    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    const-string v2, " This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store."

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_4
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    :goto_3
    iput v4, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const/4 v2, 0x2

    .line 171
    invoke-virtual {v1, p0, v0, v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    .line 172
    .line 173
    .line 174
    iput v4, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 175
    .line 176
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "notify_manager"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object p1

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "failing_client_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaz(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaA()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zab()V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "resolution"

    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
