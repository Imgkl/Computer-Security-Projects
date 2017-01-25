.class Lcom/eventgenie/android/activities/others/PreferencesActivity$7;
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
    .line 383
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 386
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    # += operator for: Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDevOptionsClickCount:I
    invoke-static {v1, v3}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->access$312(Lcom/eventgenie/android/activities/others/PreferencesActivity;I)I

    .line 388
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    # getter for: Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDevOptionsClickCount:I
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->access$300(Lcom/eventgenie/android/activities/others/PreferencesActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 389
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    const-class v2, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v1, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 392
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method
