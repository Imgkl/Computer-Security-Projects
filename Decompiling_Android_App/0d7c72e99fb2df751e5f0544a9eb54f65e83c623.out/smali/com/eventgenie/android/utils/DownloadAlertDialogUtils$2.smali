.class Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;
.super Ljava/lang/Object;
.source "DownloadAlertDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getOpenAlertDialog()Landroid/app/AlertDialog;
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
    .line 127
    iput-object p1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 131
    packed-switch p2, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->openFile()Z

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->sendEmail()Z

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    # getter for: Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;
    invoke-static {v0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->deleteFile()Z

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
