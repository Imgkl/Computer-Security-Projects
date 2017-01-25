.class Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity$2;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 195
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->signOut(Landroid/content/Context;)V

    .line 196
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    # invokes: Lcom/eventgenie/android/activities/others/PreferencesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->access$000(Lcom/eventgenie/android/activities/others/PreferencesActivity;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->clearCaches()V

    .line 197
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 198
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    .line 199
    .local v0, "eventBus":Lde/greenrobot/event/EventBus;
    new-instance v1, Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;

    invoke-direct {v1}, Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v1}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->setGuestModeEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;->this$1:Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    # invokes: Lcom/eventgenie/android/activities/others/PreferencesActivity;->reloadActivity()V
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->access$100(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    goto :goto_0
.end method
