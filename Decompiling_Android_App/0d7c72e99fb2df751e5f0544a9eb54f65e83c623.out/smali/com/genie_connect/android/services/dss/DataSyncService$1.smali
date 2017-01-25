.class Lcom/genie_connect/android/services/dss/DataSyncService$1;
.super Ljava/lang/Object;
.source "DataSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/services/dss/DataSyncService;->doUpdateSync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/services/dss/DataSyncService;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/services/dss/DataSyncService;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/genie_connect/android/services/dss/DataSyncService$1;->this$0:Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$1;->this$0:Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-virtual {v0}, Lcom/genie_connect/android/services/dss/DataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->notify_fail_title:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 314
    return-void
.end method
