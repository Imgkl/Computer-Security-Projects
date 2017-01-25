.class Lcom/eventgenie/android/EventGenieApplication$1;
.super Ljava/lang/Object;
.source "EventGenieApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/EventGenieApplication;->setupLssSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/EventGenieApplication;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/EventGenieApplication;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/eventgenie/android/EventGenieApplication$1;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication$1;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    invoke-virtual {v0}, Lcom/eventgenie/android/EventGenieApplication;->checkForUpdates()V

    .line 292
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication$1;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    invoke-virtual {v0}, Lcom/eventgenie/android/EventGenieApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveDataFull(Landroid/content/Context;Landroid/os/Handler;)V

    .line 293
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication$1;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    # getter for: Lcom/eventgenie/android/EventGenieApplication;->mLssRepeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/eventgenie/android/EventGenieApplication;->access$100(Lcom/eventgenie/android/EventGenieApplication;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method
