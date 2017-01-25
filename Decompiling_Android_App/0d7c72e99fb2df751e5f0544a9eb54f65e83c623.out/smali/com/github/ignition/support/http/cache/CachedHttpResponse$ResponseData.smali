.class public final Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;
.super Ljava/lang/Object;
.source "CachedHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ignition/support/http/cache/CachedHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseData"
.end annotation


# instance fields
.field private responseBody:[B

.field private statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->statusCode:I

    .line 21
    iput-object p2, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->responseBody:[B

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)[B
    .locals 1
    .param p0, "x0"    # Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->responseBody:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    .prologue
    .line 18
    iget v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->statusCode:I

    return v0
.end method


# virtual methods
.method public getResponseBody()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->responseBody:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->statusCode:I

    return v0
.end method
