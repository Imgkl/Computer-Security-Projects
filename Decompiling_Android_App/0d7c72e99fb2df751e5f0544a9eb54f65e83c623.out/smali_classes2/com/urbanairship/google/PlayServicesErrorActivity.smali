.class public Lcom/urbanairship/google/PlayServicesErrorActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlayServicesErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;
    }
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "error_dialog"

.field private static final REQUEST_RESOLVE_ERROR:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 130
    return-void
.end method

.method private checkPlayServices()V
    .locals 4

    .prologue
    .line 112
    const-string v1, "Checking Google Play services."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 115
    .local v0, "error":I
    if-nez v0, :cond_0

    .line 116
    const-string v1, "Google Play services available!"

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play services recoverable error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->createInstance(I)Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "error_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecoverable Google Play services error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 72
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 73
    const-string v0, "Google Play services resolution received result ok."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->checkPlayServices()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "Google Play services resolution canceled."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 85
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStarted(Landroid/app/Activity;)V

    .line 87
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "error_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->checkPlayServices()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 95
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStopped(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 100
    .local v0, "error":I
    if-nez v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 105
    .end local v0    # "error":I
    :cond_0
    return-void
.end method
