.class public Lcom/github/ignition/support/http/cache/CachedHttpRequest;
.super Ljava/lang/Object;
.source "CachedHttpRequest.java"

# interfaces
.implements Lcom/github/ignition/support/http/IgnitedHttpRequest;


# instance fields
.field private responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/ignition/support/http/cache/HttpResponseCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseCache"    # Lcom/github/ignition/support/http/cache/HttpResponseCache;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/github/ignition/support/http/cache/CachedHttpRequest;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    .line 18
    iput-object p2, p0, Lcom/github/ignition/support/http/cache/CachedHttpRequest;->url:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public varargs expecting([Ljava/lang/Integer;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 0
    .param p1, "statusCodes"    # [Ljava/lang/Integer;

    .prologue
    .line 26
    return-object p0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public retries(I)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 0
    .param p1, "retries"    # I

    .prologue
    .line 30
    return-object p0
.end method

.method public send()Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/github/ignition/support/http/cache/CachedHttpResponse;

    iget-object v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpRequest;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    iget-object v2, p0, Lcom/github/ignition/support/http/cache/CachedHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    invoke-direct {v1, v0}, Lcom/github/ignition/support/http/cache/CachedHttpResponse;-><init>(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)V

    return-object v1
.end method

.method public unwrap()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public withTimeout(I)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 42
    return-object p0
.end method
