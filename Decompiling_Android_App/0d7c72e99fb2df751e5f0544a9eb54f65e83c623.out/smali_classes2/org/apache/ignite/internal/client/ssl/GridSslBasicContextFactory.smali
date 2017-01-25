.class public Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
.super Ljava/lang/Object;
.source "GridSslBasicContextFactory.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$1;,
        Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_KEY_ALGORITHM:Ljava/lang/String; = "SunX509"

.field public static final DFLT_SSL_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final DFLT_STORE_TYPE:Ljava/lang/String; = "JKS"


# instance fields
.field private keyAlgorithm:Ljava/lang/String;

.field private keyStoreFilePath:Ljava/lang/String;

.field private keyStorePwd:[C

.field private keyStoreType:Ljava/lang/String;

.field private proto:Ljava/lang/String;

.field private trustMgrs:[Ljavax/net/ssl/TrustManager;

.field private trustStoreFilePath:Ljava/lang/String;

.field private trustStorePwd:[C

.field private trustStoreType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->proto:Ljava/lang/String;

    .line 55
    const-string v0, "SunX509"

    iput-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyAlgorithm:Ljava/lang/String;

    .line 58
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreType:Ljava/lang/String;

    .line 67
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreType:Ljava/lang/String;

    .line 417
    return-void
.end method

.method private checkNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize SSL context (parameter cannot be null): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    return-void
.end method

.method private checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 329
    sget-boolean v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreType:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->proto:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreFilePath:Ljava/lang/String;

    const-string v1, "keyStoreFilePath"

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->checkNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStorePwd:[C

    const-string v1, "keyStorePwd"

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->checkNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustMgrs:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreFilePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 337
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Failed to initialize SSL context (either trustStoreFilePath or trustManagers must be provided)"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStorePwd:[C

    const-string v1, "trustStorePwd"

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->checkNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    :cond_3
    return-void
.end method

.method public static getDisabledTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;-><init>(Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$1;)V

    return-object v0
.end method

.method private loadKeyStore(Ljava/lang/String;Ljava/lang/String;[C)Ljava/security/KeyStore;
    .locals 6
    .param p1, "keyStoreType"    # Ljava/lang/String;
    .param p2, "storeFilePath"    # Ljava/lang/String;
    .param p3, "keyStorePwd"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 379
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 381
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 383
    invoke-virtual {v2, v1, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    if-eqz v1, :cond_0

    .line 401
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 404
    :cond_0
    :goto_0
    return-object v2

    .line 387
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialize key store (security exception occurred) [type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyStorePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 401
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 404
    :cond_1
    :goto_1
    throw v3

    .line 391
    :catch_1
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialize key store (key store file was not found): [path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialize key store (I/O error occurred): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "keyStore":Ljava/security/KeyStore;
    :catch_3
    move-exception v3

    goto :goto_0

    .end local v2    # "keyStore":Ljava/security/KeyStore;
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method private parameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[keyStoreType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, ", proto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->proto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keyStoreFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustMgrs:[Ljavax/net/ssl/TrustManager;

    if-eqz v1, :cond_0

    .line 314
    const-string v1, ", trustMgrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustMgrs:[Ljavax/net/ssl/TrustManager;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    const-string v1, ", trustStoreFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public createSslContext()Ljavax/net/ssl/SSLContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->checkParameters()V

    .line 274
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyAlgorithm:Ljava/lang/String;

    invoke-static {v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 276
    .local v2, "keyMgrFactory":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v7, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreType:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreFilePath:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStorePwd:[C

    invoke-direct {p0, v7, v8, v9}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;[C)Ljava/security/KeyStore;

    move-result-object v3

    .line 278
    .local v3, "keyStore":Ljava/security/KeyStore;
    iget-object v7, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStorePwd:[C

    invoke-virtual {v2, v3, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 280
    iget-object v4, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 282
    .local v4, "mgrs":[Ljavax/net/ssl/TrustManager;
    if-nez v4, :cond_0

    .line 283
    iget-object v7, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyAlgorithm:Ljava/lang/String;

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 285
    .local v5, "trustMgrFactory":Ljavax/net/ssl/TrustManagerFactory;
    iget-object v7, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreType:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreFilePath:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStorePwd:[C

    invoke-direct {p0, v7, v8, v9}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;[C)Ljava/security/KeyStore;

    move-result-object v6

    .line 287
    .local v6, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {v5, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 289
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 292
    .end local v5    # "trustMgrFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v6    # "trustStore":Ljava/security/KeyStore;
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->proto:Ljava/lang/String;

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 294
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v4, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    return-object v0

    .line 298
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v2    # "keyMgrFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "mgrs":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Ljavax/net/ssl/SSLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to initialize SSL context "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->parameters()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStoreFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStorePassword()[C
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStorePwd:[C

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->proto:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustMgrs:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getTrustStoreFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStorePassword()[C
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStorePwd:[C

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreType:Ljava/lang/String;

    return-object v0
.end method

.method protected openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setKeyAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "keyAlgorithm"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyAlgorithm:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setKeyStoreFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreFilePath"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "keyStoreFilePath"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreFilePath:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setKeyStorePassword([C)V
    .locals 1
    .param p1, "keyStorePwd"    # [C

    .prologue
    .line 198
    const-string v0, "keyStorePwd"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStorePwd:[C

    .line 201
    return-void
.end method

.method public setKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreType"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "keyStoreType"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->keyStoreType:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "proto"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->proto:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public varargs setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0
    .param p1, "trustMgrs"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 258
    return-void
.end method

.method public setTrustStoreFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStoreFilePath"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreFilePath:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setTrustStorePassword([C)V
    .locals 0
    .param p1, "trustStorePwd"    # [C

    .prologue
    .line 238
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStorePwd:[C

    .line 239
    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "trustStoreType"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "trustStoreType"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->trustStoreType:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->parameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
