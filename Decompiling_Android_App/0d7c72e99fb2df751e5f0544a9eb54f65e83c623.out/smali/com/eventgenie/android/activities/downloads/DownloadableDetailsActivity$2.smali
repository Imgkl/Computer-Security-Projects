.class Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;
.super Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;
.source "DownloadableDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->doActionAfterGettingPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    invoke-direct {p0, p2, p3}, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v9, 0x0

    .line 315
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$100(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->dismissProgressDialog()V

    .line 316
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$100(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDownloadables()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->requery(Landroid/database/Cursor;)V

    .line 320
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$100(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDb()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v6}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$100(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    invoke-virtual {v6, v7, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 323
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 325
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    iget-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getmPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-static {v3}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$200(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setFavourite(ZZ)V

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->showBottomBarActions()V
    invoke-static {v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$300(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)V

    .line 330
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->onOpenClick(Landroid/view/View;)V

    .line 337
    .end local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    sget v2, Lcom/eventgenie/android/R$string;->downloadables_error_while_downloading_file:I

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 312
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$100(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->setProgress(I)V

    .line 342
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 312
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
