.class Lcom/urbanairship/location/UALocationManager$4;
.super Landroid/os/ResultReceiver;
.source "UALocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/UALocationManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private onUpdatesStarted()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$500(Lcom/urbanairship/location/UALocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$600(Lcom/urbanairship/location/UALocationManager;)V

    .line 336
    :cond_0
    :goto_0
    monitor-exit v1

    .line 337
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$700(Lcom/urbanairship/location/UALocationManager;)V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUpdatesStopped()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$800(Lcom/urbanairship/location/UALocationManager;)V

    .line 341
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$4;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$1000(Lcom/urbanairship/location/UALocationManager;)V

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 319
    sget v0, Lcom/urbanairship/location/LocationService;->RESULT_LOCATION_UPDATES_STARTED:I

    if-ne p1, v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager$4;->onUpdatesStarted()V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager$4;->onUpdatesStopped()V

    goto :goto_0
.end method
