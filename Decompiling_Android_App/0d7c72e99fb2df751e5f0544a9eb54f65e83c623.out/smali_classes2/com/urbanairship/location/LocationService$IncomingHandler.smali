.class public Lcom/urbanairship/location/LocationService$IncomingHandler;
.super Landroid/os/Handler;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/LocationService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/location/LocationService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    .line 578
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 579
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Received message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 603
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Unexpected message sent to location service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 605
    :goto_0
    return-void

    .line 587
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    # invokes: Lcom/urbanairship/location/LocationService;->onUnsubscribeUpdates(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->access$200(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 590
    :pswitch_2
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    # invokes: Lcom/urbanairship/location/LocationService;->onSubscribeUpdates(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->access$300(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 593
    :pswitch_3
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    # invokes: Lcom/urbanairship/location/LocationService;->onRequestSingleUpdate(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->access$400(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 596
    :pswitch_4
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    # invokes: Lcom/urbanairship/location/LocationService;->onCancelSingleUpdate(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->access$500(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 599
    :pswitch_5
    iget-object v1, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    # invokes: Lcom/urbanairship/location/LocationService;->onHandleIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/urbanairship/location/LocationService;->access$600(Lcom/urbanairship/location/LocationService;Landroid/content/Intent;)V

    .line 600
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$IncomingHandler;->this$0:Lcom/urbanairship/location/LocationService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationService;->stopSelf(I)V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
