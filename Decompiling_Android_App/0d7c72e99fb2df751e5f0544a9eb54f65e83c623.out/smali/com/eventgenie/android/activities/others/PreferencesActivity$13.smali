.class Lcom/eventgenie/android/activities/others/PreferencesActivity$13;
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
    .line 559
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$13;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 562
    invoke-static {}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->getInstance()Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-static {}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->getInstance()Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->stopScanning()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$13;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    .line 566
    const/4 v0, 0x0

    return v0
.end method
