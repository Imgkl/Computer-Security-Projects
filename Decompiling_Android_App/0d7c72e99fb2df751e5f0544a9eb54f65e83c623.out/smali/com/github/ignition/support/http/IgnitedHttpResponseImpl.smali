.class public Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;
.super Ljava/lang/Object;
.source "IgnitedHttpResponseImpl.java"

# interfaces
.implements Lcom/github/ignition/support/http/IgnitedHttpResponse;


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->response:Lorg/apache/http/HttpResponse;

    .line 33
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 34
    .local v0, "temp":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->entity:Lorg/apache/http/HttpEntity;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyAsBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public unwrap()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method
