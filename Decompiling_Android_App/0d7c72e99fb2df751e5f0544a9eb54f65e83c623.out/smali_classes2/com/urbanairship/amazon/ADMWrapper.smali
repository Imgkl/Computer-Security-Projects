.class Lcom/urbanairship/amazon/ADMWrapper;
.super Ljava/lang/Object;
.source "ADMWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported()Z
    .locals 3

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lcom/amazon/device/messaging/ADM;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/device/messaging/ADM;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    return v1

    .line 57
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 58
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    const-string v1, "Failed to call ADM. Make sure ADM jar is not bundled with the APK."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static validateManifest()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 44
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    const-string v1, "AndroidManifest invalid ADM setup."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
