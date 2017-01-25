.class Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;
.super Ljava/lang/Object;
.source "DownloadAlertDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getDownloadAlertDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 77
    packed-switch p2, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    new-instance v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;

    iget-object v2, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v2}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v3}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1$1;-><init>(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->retrieveFile(Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->sendEmail()Z

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
