.class public abstract Lcom/genie_connect/android/security/BaseLoginManager;
.super Ljava/lang/Object;
.source "BaseLoginManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/genie_connect/android/security/BaseLoginManager;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method protected static declared-synchronized getAuthString(Lcom/genie_connect/android/net/container/LoginCredentials;)Ljava/lang/String;
    .locals 3
    .param p0, "creds"    # Lcom/genie_connect/android/net/container/LoginCredentials;

    .prologue
    .line 29
    const-class v1, Lcom/genie_connect/android/security/BaseLoginManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/genie_connect/android/net/NetworkHelper;->generateBasicAuthString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 32
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cyphertext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/genie_connect/android/security/BaseLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localDecrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "plaintext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/genie_connect/android/security/BaseLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/genie_connect/android/security/BaseLoginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method
