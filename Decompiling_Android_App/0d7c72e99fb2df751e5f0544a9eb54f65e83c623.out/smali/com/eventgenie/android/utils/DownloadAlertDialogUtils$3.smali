.class Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$3;
.super Ljava/lang/Object;
.source "DownloadAlertDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getUserNotAllowedDialg(Ljava/lang/String;)Landroid/app/AlertDialog;
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
    .line 190
    iput-object p1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$3;->this$0:Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    return-void
.end method
