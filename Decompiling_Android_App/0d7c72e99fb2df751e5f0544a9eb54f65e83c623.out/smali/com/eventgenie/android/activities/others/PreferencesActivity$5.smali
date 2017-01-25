.class Lcom/eventgenie/android/activities/others/PreferencesActivity$5;
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
    .line 357
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$5;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 360
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$5;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_leds"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 362
    const-string v1, "^ PREFS: LED ENABLED"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 366
    :goto_0
    return v3

    .line 364
    :cond_0
    const-string v1, "^ PREFS: LED DISABLED"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
