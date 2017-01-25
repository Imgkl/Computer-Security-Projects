.class Lcom/urbanairship/location/UALocationManager$3;
.super Ljava/lang/Object;
.source "UALocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/UALocationManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$300(Lcom/urbanairship/location/UALocationManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 147
    .local v0, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v2, Lcom/urbanairship/location/UALocationManager$3$1;

    invoke-direct {v2, p0}, Lcom/urbanairship/location/UALocationManager$3$1;-><init>(Lcom/urbanairship/location/UALocationManager$3;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 154
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 155
    return-void
.end method
