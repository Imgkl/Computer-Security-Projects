.class public Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "IgnitedHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field private static exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private maxRetries:I

.field private timesRetried:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    .line 30
    sget-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxRetries"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->maxRetries:I

    .line 48
    return-void
.end method


# virtual methods
.method public getTimesRetried()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->timesRetried:I

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 53
    iput p2, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->timesRetried:I

    .line 55
    const-string v3, "http.request_sent"

    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 56
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 58
    .local v2, "sent":Z
    :goto_0
    iget v3, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->maxRetries:I

    if-le p2, v3, :cond_1

    .line 60
    const/4 v1, 0x0

    .line 76
    .local v1, "retry":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 77
    sget-object v3, Lcom/github/ignition/support/http/IgnitedHttp;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), will retry in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 86
    :goto_2
    return v1

    .line 56
    .end local v1    # "retry":Z
    .end local v2    # "sent":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    .restart local v2    # "sent":Z
    :cond_1
    sget-object v3, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    const/4 v1, 0x0

    .restart local v1    # "retry":Z
    goto :goto_1

    .line 64
    .end local v1    # "retry":Z
    :cond_2
    sget-object v3, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    const/4 v1, 0x1

    .restart local v1    # "retry":Z
    goto :goto_1

    .line 67
    .end local v1    # "retry":Z
    :cond_3
    if-nez v2, :cond_4

    .line 70
    const/4 v1, 0x1

    .restart local v1    # "retry":Z
    goto :goto_1

    .line 73
    .end local v1    # "retry":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "retry":Z
    goto :goto_1

    .line 82
    :cond_5
    sget-object v3, Lcom/github/ignition/support/http/IgnitedHttp;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request failed after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attempts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
