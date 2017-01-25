.class Lcom/eventgenie/android/activities/others/PreferencesActivity$3;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity;->doLoginPrefsStuff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

.field final synthetic val$cmsLogin:Lcom/genie_connect/android/security/CmsLoginManager;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;Lcom/genie_connect/android/security/CmsLoginManager;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;->val$cmsLogin:Lcom/genie_connect/android/security/CmsLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;->val$cmsLogin:Lcom/genie_connect/android/security/CmsLoginManager;

    invoke-virtual {v0}, Lcom/genie_connect/android/security/CmsLoginManager;->signOut()V

    .line 241
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    # getter for: Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->access$200(Lcom/eventgenie/android/activities/others/PreferencesActivity;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method
