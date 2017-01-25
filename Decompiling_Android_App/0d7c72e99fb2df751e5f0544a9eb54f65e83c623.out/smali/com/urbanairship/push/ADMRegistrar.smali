.class Lcom/urbanairship/push/ADMRegistrar;
.super Ljava/lang/Object;
.source "ADMRegistrar.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()Z
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, v1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "adm":Lcom/amazon/device/messaging/ADM;
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 51
    const/4 v2, 0x1

    .line 54
    .end local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return v2

    .line 53
    :cond_0
    const-string v2, "ADM is not supported on this device."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 54
    const/4 v2, 0x0

    goto :goto_0
.end method
