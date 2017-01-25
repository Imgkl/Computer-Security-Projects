.class Lcom/urbanairship/location/UALocationManager$3$1;
.super Landroid/content/BroadcastReceiver;
.source "UALocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/location/UALocationManager$3;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager$3;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$3$1;->this$1:Lcom/urbanairship/location/UALocationManager$3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$3$1;->this$1:Lcom/urbanairship/location/UALocationManager$3;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 151
    return-void
.end method
