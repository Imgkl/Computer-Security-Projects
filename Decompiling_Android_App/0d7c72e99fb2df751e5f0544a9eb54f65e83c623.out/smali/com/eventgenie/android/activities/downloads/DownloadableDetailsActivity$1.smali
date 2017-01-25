.class Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$1;
.super Ljava/lang/Object;
.source "DownloadableDetailsActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->doActionAfterGettingPermission()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->access$000(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)V

    .line 298
    return-void
.end method
