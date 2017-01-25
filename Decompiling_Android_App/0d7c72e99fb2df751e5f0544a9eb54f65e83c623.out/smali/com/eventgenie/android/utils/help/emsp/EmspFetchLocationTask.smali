.class public Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;
.super Landroid/os/AsyncTask;
.source "EmspFetchLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final BEARER:Ljava/lang/String; = "Bearer "

.field private static final WAIT_AFTER_SCANNING:I = 0x7d0


# instance fields
.field final mAuthToken:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    .line 31
    iput-object p3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mAuthToken:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ EMSPLOC: Store contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 41
    iget-object v7, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->isRegistered()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 42
    const-string v7, "https://%s/v1/emsp/%s/devices/%s/location"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->getEndpointUrl()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->getLocationId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->getDeviceHandle()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->scan(Landroid/content/Context;)V

    .line 51
    const-wide/16 v8, 0x7d0

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "AUTHORIZATION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bearer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v6, v2}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getForJson(Ljava/lang/String;Ljava/util/List;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v5

    .line 61
    .local v5, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;

    invoke-virtual {v1, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;

    .line 67
    .local v4, "res":Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 68
    iget-object v7, p0, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->getDeviceLocation()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->setDeviceLocationInfo(Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;)V

    .line 69
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    .end local v4    # "res":Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;
    .end local v5    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v6    # "url":Ljava/lang/String;
    .local v3, "methodResult":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    const-string v7, "^ EMSPLOC: Location Retrieval succesful!"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 92
    :goto_2
    return-object v3

    .line 52
    .end local v3    # "methodResult":Ljava/lang/Boolean;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    .restart local v4    # "res":Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;
    .restart local v5    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_0
    if-eqz v4, :cond_1

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ EMSPLOC: STATUS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 74
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v3    # "methodResult":Ljava/lang/Boolean;
    goto :goto_1

    .line 78
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "methodResult":Ljava/lang/Boolean;
    .end local v4    # "res":Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v3    # "methodResult":Ljava/lang/Boolean;
    goto :goto_1

    .line 82
    .end local v2    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    .end local v3    # "methodResult":Ljava/lang/Boolean;
    .end local v5    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v6    # "url":Ljava/lang/String;
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v3    # "methodResult":Ljava/lang/Boolean;
    goto :goto_1

    .line 89
    :cond_4
    const-string v7, "^ EMSPLOC: Location Retrieval failed!"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
