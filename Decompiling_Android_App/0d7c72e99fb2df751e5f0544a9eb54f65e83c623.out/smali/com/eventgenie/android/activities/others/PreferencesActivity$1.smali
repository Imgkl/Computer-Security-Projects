.class Lcom/eventgenie/android/activities/others/PreferencesActivity$1;
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


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$1;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 179
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$1;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->doGenericVisitorLogin(Landroid/app/Activity;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method
