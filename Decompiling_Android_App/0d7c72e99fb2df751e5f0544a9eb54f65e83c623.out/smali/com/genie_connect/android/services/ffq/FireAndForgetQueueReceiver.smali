.class public Lcom/genie_connect/android/services/ffq/FireAndForgetQueueReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FireAndForgetQueueReceiver.java"


# static fields
.field public static final FILTER:Ljava/lang/String; = "com.eventgenie.android.ffq.FIRE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    .end local v0    # "myIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
