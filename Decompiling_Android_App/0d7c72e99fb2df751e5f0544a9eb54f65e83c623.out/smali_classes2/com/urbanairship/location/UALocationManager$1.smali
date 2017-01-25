.class Lcom/urbanairship/location/UALocationManager$1;
.super Ljava/lang/Object;
.source "UALocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/UALocationManager;
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
    .line 82
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$1;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 86
    const-string v0, "Location service connected."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$1;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0, p2}, Lcom/urbanairship/location/UALocationManager;->access$000(Lcom/urbanairship/location/UALocationManager;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    const-string v0, "Location service disconnected."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$1;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$100(Lcom/urbanairship/location/UALocationManager;)V

    .line 94
    return-void
.end method
