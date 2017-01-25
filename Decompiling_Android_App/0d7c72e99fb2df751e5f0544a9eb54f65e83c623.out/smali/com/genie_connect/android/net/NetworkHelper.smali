.class public Lcom/genie_connect/android/net/NetworkHelper;
.super Lcom/genie_connect/common/net/CommonNetworkHelper;
.source "NetworkHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/genie_connect/common/net/CommonNetworkHelper;-><init>()V

    return-void
.end method

.method public static getDummyPostEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 7

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "dummy"

    const-string v6, "data"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v2, 0x0

    .line 52
    .local v2, "postEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "postEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .local v3, "postEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v2, v3

    .line 56
    .end local v3    # "postEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v2    # "postEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e2":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
