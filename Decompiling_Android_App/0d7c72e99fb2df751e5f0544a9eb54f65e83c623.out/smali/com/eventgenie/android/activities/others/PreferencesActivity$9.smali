.class Lcom/eventgenie/android/activities/others/PreferencesActivity$9;
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
    .line 437
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$9;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 440
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$9;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v2, "allow_push"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    .local v0, "pushEnabled":Z
    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$9;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v1}, Lcom/eventgenie/android/push/UrbanAirshipControl;->startUrbanAirship(Landroid/content/Context;)V

    .line 443
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 447
    :goto_0
    return v3

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$9;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v1}, Lcom/eventgenie/android/push/UrbanAirshipControl;->stopUrbanAirship(Landroid/content/Context;)V

    goto :goto_0
.end method
