.class public Lcom/genie_connect/common/net/providers/CommonNetworkUtils;
.super Ljava/lang/Object;
.source "CommonNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/net/providers/CommonNetworkUtils$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z
    .locals 5
    .param p0, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;
    .param p1, "responseCode"    # I

    .prologue
    const/16 v4, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    sget-object v2, Lcom/genie_connect/common/net/providers/CommonNetworkUtils$1;->$SwitchMap$com$genie_connect$common$net$utils$HttpAction:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/net/utils/HttpAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NETUTILS: isRequestSuccessful() Checking unspecified action \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    .line 74
    if-ne p1, v4, :cond_9

    .line 77
    .local v0, "res":Z
    :goto_0
    invoke-static {v0, p1}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->logHttpCode(ZI)V

    .line 79
    return v0

    .line 54
    .end local v0    # "res":Z
    :pswitch_0
    if-ne p1, v4, :cond_0

    .line 55
    .restart local v0    # "res":Z
    :goto_1
    goto :goto_0

    .end local v0    # "res":Z
    :cond_0
    move v0, v1

    .line 54
    goto :goto_1

    .line 57
    :pswitch_1
    if-eq p1, v4, :cond_1

    const/16 v2, 0xc9

    if-ne p1, v2, :cond_2

    .line 58
    .restart local v0    # "res":Z
    :cond_1
    :goto_2
    goto :goto_0

    .end local v0    # "res":Z
    :cond_2
    move v0, v1

    .line 57
    goto :goto_2

    .line 60
    :pswitch_2
    if-ne p1, v4, :cond_3

    .line 61
    .restart local v0    # "res":Z
    :goto_3
    goto :goto_0

    .end local v0    # "res":Z
    :cond_3
    move v0, v1

    .line 60
    goto :goto_3

    .line 63
    :pswitch_3
    if-ne p1, v4, :cond_4

    .line 64
    .restart local v0    # "res":Z
    :goto_4
    goto :goto_0

    .end local v0    # "res":Z
    :cond_4
    move v0, v1

    .line 63
    goto :goto_4

    .line 66
    :pswitch_4
    if-eq p1, v4, :cond_5

    const/16 v2, 0xca

    if-ne p1, v2, :cond_6

    .line 67
    .restart local v0    # "res":Z
    :cond_5
    :goto_5
    goto :goto_0

    .end local v0    # "res":Z
    :cond_6
    move v0, v1

    .line 66
    goto :goto_5

    .line 70
    :pswitch_5
    if-eq p1, v4, :cond_7

    const/16 v2, 0xd6

    if-ne p1, v2, :cond_8

    .line 71
    .restart local v0    # "res":Z
    :cond_7
    :goto_6
    goto :goto_0

    .end local v0    # "res":Z
    :cond_8
    move v0, v1

    .line 70
    goto :goto_6

    :cond_9
    move v0, v1

    .line 74
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z
    .locals 1
    .param p0, "req"    # Ljava/net/HttpURLConnection;
    .param p1, "responseCode"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/net/utils/HttpAction;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/net/utils/HttpAction;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v0

    return v0
.end method

.method private static logHttpCode(ZI)V
    .locals 2
    .param p0, "success"    # Z
    .param p1, "responseCode"    # I

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NET: HTTP code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/CommonLog;->debug(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NET: HTTP code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_0
.end method
