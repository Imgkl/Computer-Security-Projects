.class public Lcom/genie_connect/android/net/OkHttpClientSingleton;
.super Ljava/lang/Object;
.source "OkHttpClientSingleton.java"


# static fields
.field private static sLockObject:Ljava/lang/Object;

.field private static sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/genie_connect/android/net/OkHttpClientSingleton;->sLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 3

    .prologue
    .line 47
    sget-object v1, Lcom/genie_connect/android/net/OkHttpClientSingleton;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v1, :cond_1

    .line 48
    sget-object v2, Lcom/genie_connect/android/net/OkHttpClientSingleton;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    sget-object v1, Lcom/genie_connect/android/net/OkHttpClientSingleton;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 73
    .local v0, "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    sput-object v0, Lcom/genie_connect/android/net/OkHttpClientSingleton;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 75
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v1, Lcom/genie_connect/android/net/OkHttpClientSingleton;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
