.class Lcom/eventgenie/android/activities/others/PreferencesActivity$4;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$4;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 341
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$4;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v3, "enable_vibration"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 344
    .local v0, "enabled":Z
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/push/PushManager;->setVibrateEnabled(Z)V

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$4;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 348
    .local v1, "v":Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 349
    const-string v2, "^ PREFS: Vibrate ENABLED"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 353
    .end local v1    # "v":Landroid/os/Vibrator;
    :goto_0
    return v4

    .line 351
    :cond_0
    const-string v2, "^ PREFS: Vibrate DISABLED"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
