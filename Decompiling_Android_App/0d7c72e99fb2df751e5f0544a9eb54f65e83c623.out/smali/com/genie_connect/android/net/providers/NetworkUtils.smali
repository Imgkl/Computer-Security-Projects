.class public Lcom/genie_connect/android/net/providers/NetworkUtils;
.super Lcom/genie_connect/common/net/providers/CommonNetworkUtils;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;-><init>()V

    return-void
.end method

.method protected static clearDirectory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v6, 0x1

    .line 59
    .local v6, "res":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 62
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 63
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 64
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 65
    const/4 v6, 0x0

    .line 63
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return v6
.end method

.method public static getGmPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isThisBlackberryHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "blackberry"

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android"

    goto :goto_0
.end method

.method public static getGmUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "user_session_uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 89
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 91
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 94
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 95
    const/4 v3, 0x1

    .line 106
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 97
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    const-string v4, "^ NET: isConnected() = false"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "^ NET: isConnected() = false - error!"

    invoke-static {v4, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    :try_start_1
    const-string v4, "^ NET: isConnected() = false - cm is null!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isRequestSuccessful(Lcom/genie_connect/common/net/container/NetworkResultGm;)Z
    .locals 2
    .param p0, "result"    # Lcom/genie_connect/common/net/container/NetworkResultGm;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultGm;->getAction()Lcom/genie_connect/common/net/utils/HttpAction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultGm;->getResponseCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v0

    return v0
.end method

.method public static isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z
    .locals 1
    .param p0, "req"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p1, "responseCode"    # I

    .prologue
    .line 121
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/net/utils/HttpAction;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/net/utils/HttpAction;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v0

    return v0
.end method

.method public static isRequestSuccessful(Lorg/apache/http/client/methods/HttpRequestBase;I)Z
    .locals 1
    .param p0, "conn"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p1, "responseCode"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/net/utils/HttpAction;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/net/utils/HttpAction;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v0

    return v0
.end method

.method public static logHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;)V
    .locals 7
    .param p0, "conn"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;

    .prologue
    .line 146
    if-nez p0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 149
    .local v2, "headers":[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 150
    .local v1, "header":Lorg/apache/http/Header;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ NET: HEADER: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static logHeaders(Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 134
    if-nez p0, :cond_1

    .line 143
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 136
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 138
    .local v1, "headerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "header":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 140
    .local v5, "val":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NET: HEADER: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
