.class Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;
.super Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;
.source "DownloadAlertDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    invoke-direct {p0, p2, p3}, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v1, v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDownloadables()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->requery(Landroid/database/Cursor;)V

    .line 86
    iget-object v1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v1, v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getOpenAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 88
    .local v0, "afterDownload":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v1, v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDb()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v2, v2, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$100(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v4, v4, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mId:J
    invoke-static {v4}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$200(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v6, v6, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v6}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v7, v7, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$100(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 97
    .end local v0    # "afterDownload":Landroid/app/AlertDialog;
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v1, v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->dismissProgressDialog()V

    .line 98
    invoke-super {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;->onPostExecute(Ljava/lang/Object;)V

    .line 99
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v1, v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$100(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->downloadables_error_while_downloading_file:I

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->this$1:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    iget-object v0, v0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->setProgress(I)V

    .line 104
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
