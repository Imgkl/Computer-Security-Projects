.class public Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;
.super Landroid/os/Handler;
.source "Map2DActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 0

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1338
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 1339
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v1

    .line 1340
    .local v1, "oldScale":F
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1341
    .local v0, "msg_scale":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ HANDLER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 1343
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # *= operator for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v2, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1432(Lcom/eventgenie/android/activities/mapping/Map2DActivity;F)F

    .line 1344
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v3

    invoke-static {v3}, Lcom/eventgenie/android/mapping/d2/ZoomHelper;->limitZoom(F)F

    move-result v3

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1402(Lcom/eventgenie/android/activities/mapping/Map2DActivity;F)F

    .line 1346
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1347
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setScaleFactor(F)V

    .line 1348
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v3

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoom(FF)V
    invoke-static {v2, v1, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;FF)V

    .line 1351
    .end local v0    # "msg_scale":F
    .end local v1    # "oldScale":F
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v0, 0x0

    .line 1354
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->removeMessages(I)V

    .line 1355
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1356
    return-void
.end method
