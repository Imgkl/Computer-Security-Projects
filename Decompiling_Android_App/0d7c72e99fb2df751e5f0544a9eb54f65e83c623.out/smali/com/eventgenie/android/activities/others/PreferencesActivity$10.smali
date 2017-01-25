.class Lcom/eventgenie/android/activities/others/PreferencesActivity$10;
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
    .line 451
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$10;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$10;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$10;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;I)V

    .line 459
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$10;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method
