.class Lcom/urbanairship/location/UALocationManager$IncomingHandler;
.super Landroid/os/Handler;
.source "UALocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/UALocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 485
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    .line 487
    .local v3, "manager":Lcom/urbanairship/location/UALocationManager;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 515
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    .line 490
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 493
    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 494
    :try_start_0
    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/location/LocationListener;

    .line 495
    .local v1, "listener":Lcom/urbanairship/location/LocationListener;
    invoke-interface {v1, v2}, Lcom/urbanairship/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    .line 497
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/urbanairship/location/LocationListener;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "location":Landroid/location/Location;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    .line 502
    .restart local v2    # "location":Landroid/location/Location;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 505
    .local v5, "requestId":I
    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v7

    monitor-enter v7

    .line 506
    :try_start_2
    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/urbanairship/location/PendingLocationResult;

    .line 507
    .local v4, "request":Lcom/urbanairship/location/PendingLocationResult;
    if-eqz v4, :cond_2

    .line 508
    invoke-virtual {v4, v2}, Lcom/urbanairship/location/PendingLocationResult;->setResult(Landroid/location/Location;)V

    .line 509
    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 510
    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 512
    :cond_2
    monitor-exit v7

    goto :goto_0

    .end local v4    # "request":Lcom/urbanairship/location/PendingLocationResult;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 487
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
