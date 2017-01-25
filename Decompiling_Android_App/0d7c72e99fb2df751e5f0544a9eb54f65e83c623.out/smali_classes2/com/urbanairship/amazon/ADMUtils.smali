.class public Lcom/urbanairship/amazon/ADMUtils;
.super Ljava/lang/Object;
.source "ADMUtils.java"


# static fields
.field private static isADMAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isADMAvailable()Z
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 54
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v1

    .line 48
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_0
    const-string v1, "com.amazon.device.messaging.ADM"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    sget-object v1, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static isADMSupported()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/amazon/ADMWrapper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static validateManifest()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/urbanairship/amazon/ADMWrapper;->validateManifest()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "ADM is not available on this device."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
