.class public Lcom/github/ignition/support/http/cache/CachedHttpResponse;
.super Ljava/lang/Object;
.source "CachedHttpResponse.java"

# interfaces
.implements Lcom/github/ignition/support/http/IgnitedHttpResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;
    }
.end annotation


# instance fields
.field private cachedData:Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;


# direct methods
.method public constructor <init>(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)V
    .locals 0
    .param p1, "cachedData"    # Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse;->cachedData:Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    .line 40
    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseBody()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse;->cachedData:Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    # getter for: Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->responseBody:[B
    invoke-static {v1}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->access$000(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

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
    .line 51
    iget-object v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse;->cachedData:Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    # getter for: Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->responseBody:[B
    invoke-static {v0}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->access$000(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse;->cachedData:Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    # getter for: Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->responseBody:[B
    invoke-static {v1}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->access$000(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse;->cachedData:Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    # getter for: Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->statusCode:I
    invoke-static {v0}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->access$100(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)I

    move-result v0

    return v0
.end method

.method public unwrap()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
