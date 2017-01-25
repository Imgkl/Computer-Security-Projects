.class Lcom/eventgenie/android/activities/others/PreferencesActivity$6;
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
    .line 370
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$6;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 373
    const-string v1, "^ PREFS: Firing FFQ"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$6;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    const-class v2, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.eventgenie.android.EXTRA_ACTION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$6;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 379
    return v3
.end method
