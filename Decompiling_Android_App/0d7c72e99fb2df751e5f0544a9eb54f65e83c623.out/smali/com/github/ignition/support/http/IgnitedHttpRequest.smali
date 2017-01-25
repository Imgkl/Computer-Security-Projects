.class public interface abstract Lcom/github/ignition/support/http/IgnitedHttpRequest;
.super Ljava/lang/Object;
.source "IgnitedHttpRequest.java"


# virtual methods
.method public varargs abstract expecting([Ljava/lang/Integer;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
.end method

.method public abstract getRequestUrl()Ljava/lang/String;
.end method

.method public abstract retries(I)Lcom/github/ignition/support/http/IgnitedHttpRequest;
.end method

.method public abstract send()Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation
.end method

.method public abstract unwrap()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method public abstract withTimeout(I)Lcom/github/ignition/support/http/IgnitedHttpRequest;
.end method
