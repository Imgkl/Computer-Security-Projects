.class Lcom/urbanairship/location/LocationService$1;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/urbanairship/PendingResult$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/LocationService;->onRequestSingleUpdate(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/urbanairship/PendingResult$ResultCallback",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/LocationService;

.field final synthetic val$client:Landroid/os/Messenger;

.field final synthetic val$options:Lcom/urbanairship/location/LocationRequestOptions;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;ILcom/urbanairship/location/LocationRequestOptions;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/urbanairship/location/LocationService$1;->this$0:Lcom/urbanairship/location/LocationService;

    iput-object p2, p0, Lcom/urbanairship/location/LocationService$1;->val$client:Landroid/os/Messenger;

    iput p3, p0, Lcom/urbanairship/location/LocationService$1;->val$requestId:I

    iput-object p4, p0, Lcom/urbanairship/location/LocationService$1;->val$options:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Single location received for client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->val$client:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationService$1;->val$requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received single location update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->val$options:Lcom/urbanairship/location/LocationRequestOptions;

    sget-object v2, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/urbanairship/analytics/Analytics;->recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/LocationEvent$UpdateType;)V

    .line 300
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$1;->this$0:Lcom/urbanairship/location/LocationService;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->val$client:Landroid/os/Messenger;

    const/4 v2, 0x4

    iget v3, p0, Lcom/urbanairship/location/LocationService$1;->val$requestId:I

    # invokes: Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3, p1}, Lcom/urbanairship/location/LocationService;->access$000(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;IILjava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$1;->this$0:Lcom/urbanairship/location/LocationService;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->val$client:Landroid/os/Messenger;

    iget v2, p0, Lcom/urbanairship/location/LocationService$1;->val$requestId:I

    # invokes: Lcom/urbanairship/location/LocationService;->removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;
    invoke-static {v0, v1, v2}, Lcom/urbanairship/location/LocationService;->access$100(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;

    .line 303
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 290
    check-cast p1, Landroid/location/Location;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/urbanairship/location/LocationService$1;->onResult(Landroid/location/Location;)V

    return-void
.end method
