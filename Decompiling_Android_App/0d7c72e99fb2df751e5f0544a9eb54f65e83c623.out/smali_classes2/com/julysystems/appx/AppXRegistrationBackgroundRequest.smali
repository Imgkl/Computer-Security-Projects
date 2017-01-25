.class Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;
.super Lcom/julysystems/appx/AppXBackgroundRequest;
.source "AppXRegistrationBackgroundRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_REGISTRATION_BACKGROUND_REQUEST"

.field private static mAppXViewUpdateListners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/julysystems/appx/AppXRegistrationListner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheDuration"    # I
    .param p3, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/julysystems/appx/AppXBackgroundRequest;-><init>(Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 21
    sget-object v0, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    .line 23
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postParams"    # Ljava/lang/String;
    .param p3, "cacheDuration"    # I
    .param p4, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/julysystems/appx/AppXBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 27
    return-void
.end method

.method public static addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V
    .locals 1
    .param p0, "listener"    # Lcom/julysystems/appx/AppXRegistrationListner;

    .prologue
    .line 138
    sget-object v0, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    .line 140
    :cond_0
    sget-object v0, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method protected static retryRegistration()V
    .locals 15

    .prologue
    .line 52
    sget-object v12, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/julysystems/appx/AppX;->getRegistrationBackoff(Landroid/content/Context;)J

    move-result-wide v2

    .line 53
    .local v2, "backoffTimeMs":J
    const-wide/16 v12, 0x2

    mul-long v6, v2, v12

    .line 54
    .local v6, "nextBackoffTimeMs":J
    sget-object v12, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v12, v6, v7}, Lcom/julysystems/appx/AppX;->setRegistrationBackoff(Landroid/content/Context;J)V

    .line 56
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 57
    const-string v9, "@99xcl!ents3cr3t"

    .line 58
    .local v9, "saltValue":Ljava/lang/String;
    sget-object v12, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "appId":Ljava/lang/String;
    sget-object v12, Lcom/julysystems/appx/AppX;->appXPackageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 60
    const-string v12, "APPX Register"

    const-string v13, "Application package name is wrong"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v12, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/julysystems/appx/AppXDeviceUtils;->getmd5HashUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "udid":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "clientId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&appId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&platform=android&appXVersion="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "1.2.5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&x-july-client=appx"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "paramsList":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/julysystems/appx/AppX;->appXSecretKey:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/julysystems/appx/AppX;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "signature":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "clientId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&appId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&mi_appid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/julysystems/appx/AppX;->appXPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&platform=android&appXVersion="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "1.2.5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&appName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/julysystems/appx/AppX;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&signature="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "postParams":Ljava/lang/String;
    new-instance v1, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;

    sget-object v12, Lcom/julysystems/appx/AppXConstants;->appxRegistrationUrl:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v12, v8, v13, v14}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 66
    .local v1, "dataRequest":Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;
    invoke-static {v1}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "dataRequest":Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;
    .end local v5    # "paramsList":Ljava/lang/String;
    .end local v8    # "postParams":Ljava/lang/String;
    .end local v9    # "saltValue":Ljava/lang/String;
    .end local v10    # "signature":Ljava/lang/String;
    .end local v11    # "udid":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v4

    .line 68
    .local v4, "e1":Ljava/lang/Exception;
    const-string v12, "APPX_REGISTRATION_BACKGROUND_REQUEST"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exception -- "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getRegistrationJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, ""

    .line 117
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x8

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 118
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 120
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
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

    .line 134
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .line 121
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

    .line 125
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Registration Buffer Error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Registration JSON Parser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onFailure()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public processData([BZ)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    .line 32
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->getRegistrationJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    .local v2, "jsonObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->processRegistrationJSON(Lorg/json/JSONObject;)V

    .line 35
    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string v3, "failure"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->retryRegistration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e1":Ljava/lang/Exception;
    const-string v3, "APPX_REGISTRATION_BACKGROUND_REQUEST"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processRegistrationJSON(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 74
    if-eqz p1, :cond_3

    .line 76
    :try_start_0
    const-string v10, "appx-registration"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 77
    .local v7, "regObj":Lorg/json/JSONObject;
    const-string v10, "status"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "status":Ljava/lang/String;
    const-string v10, "recurring"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "recurring":Ljava/lang/String;
    const-string v10, "use_draft"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "useDraft":Ljava/lang/String;
    const-string v10, "manifestBasePath"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "manifestPath":Ljava/lang/String;
    const-string v10, "error"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 82
    .local v2, "errObj":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "errorCode":Ljava/lang/String;
    const-string v10, "description"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "errorDecription":Ljava/lang/String;
    const-string v10, "unAuthorized"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "failure"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    :cond_0
    const-string v10, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Registration Failed for Client ID "

    sget-object v11, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v10, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Registration Failed for Secret Key "

    sget-object v11, Lcom/julysystems/appx/AppX;->appXSecretKey:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const-string v10, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Server Registration errorCode"

    invoke-static {v10, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v10, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Server Registration errorCode"

    invoke-static {v10, v4}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v10, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/julysystems/appx/AppX;->saveRegistrationStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    sget-object v10, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    sget-object v11, Lcom/julysystems/appx/AppX;->appXClientId:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/julysystems/appx/AppX;->saveClientId(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    sget-object v10, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/julysystems/appx/AppX;->saveRecurringStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    const-string v10, "true"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 94
    sget-object v10, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v11, "true"

    invoke-static {v10, v11}, Lcom/julysystems/appx/AppX;->saveDeveloperStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :cond_2
    sget-object v10, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v10, v9}, Lcom/julysystems/appx/AppX;->saveUseDraftStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    sget-object v10, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v10, v5}, Lcom/julysystems/appx/AppX;->saveManifestBasePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    const-string v10, "success"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 98
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateAppXTagMap()V

    .line 99
    sget-object v10, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 100
    sget-object v10, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 103
    sget-object v10, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->mAppXViewUpdateListners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 111
    .end local v2    # "errObj":Lorg/json/JSONObject;
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v4    # "errorDecription":Ljava/lang/String;
    .end local v5    # "manifestPath":Ljava/lang/String;
    .end local v6    # "recurring":Ljava/lang/String;
    .end local v7    # "regObj":Lorg/json/JSONObject;
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "useDraft":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 100
    .restart local v2    # "errObj":Lorg/json/JSONObject;
    .restart local v3    # "errorCode":Ljava/lang/String;
    .restart local v4    # "errorDecription":Ljava/lang/String;
    .restart local v5    # "manifestPath":Ljava/lang/String;
    .restart local v6    # "recurring":Ljava/lang/String;
    .restart local v7    # "regObj":Lorg/json/JSONObject;
    .restart local v8    # "status":Ljava/lang/String;
    .restart local v9    # "useDraft":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXRegistrationListner;

    .line 101
    .local v0, "appXViewUpdateListner":Lcom/julysystems/appx/AppXRegistrationListner;
    invoke-interface {v0}, Lcom/julysystems/appx/AppXRegistrationListner;->onRegistrationSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0    # "appXViewUpdateListner":Lcom/julysystems/appx/AppXRegistrationListner;
    .end local v2    # "errObj":Lorg/json/JSONObject;
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v4    # "errorDecription":Ljava/lang/String;
    .end local v5    # "manifestPath":Ljava/lang/String;
    .end local v6    # "recurring":Ljava/lang/String;
    .end local v7    # "regObj":Lorg/json/JSONObject;
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "useDraft":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "APPX_REGISTRATION_BACKGROUND_REQUESTAppx Registration JSONException"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
