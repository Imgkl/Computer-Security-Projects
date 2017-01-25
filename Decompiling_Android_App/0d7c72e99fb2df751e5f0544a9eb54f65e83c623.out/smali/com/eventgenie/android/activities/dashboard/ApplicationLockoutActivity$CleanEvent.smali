.class Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;
.super Landroid/os/AsyncTask;
.source "ApplicationLockoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;->this$0:Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;
    .param p2, "x1"    # Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;-><init>(Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;->this$0:Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;->this$0:Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    const-string/jumbo v1, "visitors"

    invoke-static {v2, v3, v1}, Lcom/genie_connect/android/db/caching/PSCGroups;->getGroupForEntity(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->deleteGroup(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;->this$0:Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->deleteAllEntities()J

    .line 101
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->setVisitorCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;->this$0:Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->clearCaches()V

    .line 103
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 104
    const-string v0, "^ LOCKOUT: Cleanup complete"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 105
    return-object v4
.end method
