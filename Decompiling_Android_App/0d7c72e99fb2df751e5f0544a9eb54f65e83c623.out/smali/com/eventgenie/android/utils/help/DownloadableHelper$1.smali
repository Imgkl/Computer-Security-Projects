.class Lcom/eventgenie/android/utils/help/DownloadableHelper$1;
.super Ljava/lang/Object;
.source "DownloadableHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/DownloadableHelper;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/DownloadableHelper;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/DownloadableHelper;I)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;->this$0:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    iput p2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;->this$0:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    # getter for: Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->access$000(Lcom/eventgenie/android/utils/help/DownloadableHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;->this$0:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    # getter for: Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->access$000(Lcom/eventgenie/android/utils/help/DownloadableHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;->val$value:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 241
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;->this$0:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    # getter for: Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->access$000(Lcom/eventgenie/android/utils/help/DownloadableHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 243
    :cond_0
    return-void
.end method
