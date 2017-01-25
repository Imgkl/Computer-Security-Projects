.class Lcom/julysystems/appx/AppXRegIdBackgroundRequest;
.super Lcom/julysystems/appx/AppXBackgroundRequest;
.source "AppXRegIdBackgroundRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_REGID_BACKGROUND_REQUEST"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheDuration"    # I
    .param p3, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/julysystems/appx/AppXBackgroundRequest;-><init>(Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 18
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postParams"    # Ljava/lang/String;
    .param p3, "cacheDuration"    # I
    .param p4, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/julysystems/appx/AppXBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 22
    return-void
.end method

.method protected static getPushJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, ""

    .line 66
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, p0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x8

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 67
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 69
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "jObj":Lorg/json/JSONObject;
    .local v2, "jObj":Lorg/json/JSONObject;
    move-object v1, v2

    .line 83
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .line 70
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 74
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "APPX_REGID_BACKGROUND_REQUESTAppx Registration Buffer Error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "APPX_REGID_BACKGROUND_REQUESTAppx Registration JSON Parser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static retrySendRegID()V
    .locals 6

    .prologue
    .line 57
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/julysystems/appx/AppX;->getPushBackoff(Landroid/content/Context;)J

    move-result-wide v0

    .line 58
    .local v0, "backoffTimeMs":J
    const-wide/16 v4, 0x2

    mul-long v2, v0, v4

    .line 59
    .local v2, "nextBackoffTimeMs":J
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/julysystems/appx/AppX;->setPushBackoff(Landroid/content/Context;J)V

    .line 60
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public processData([BZ)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
