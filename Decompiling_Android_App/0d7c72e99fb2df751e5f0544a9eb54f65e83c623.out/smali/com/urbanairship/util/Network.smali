.class public Lcom/urbanairship/util/Network;
.super Ljava/lang/Object;
.source "Network.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 58
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    const-string v3, "Error fetching network info."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
