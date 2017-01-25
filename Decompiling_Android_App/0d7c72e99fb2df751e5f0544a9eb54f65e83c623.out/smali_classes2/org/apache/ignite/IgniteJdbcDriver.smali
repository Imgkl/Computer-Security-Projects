.class public Lorg/apache/ignite/IgniteJdbcDriver;
.super Ljava/lang/Object;
.source "IgniteJdbcDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/IgniteJdbcDriver$1;,
        Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_PORT:I = 0x2bcb

.field private static final MAJOR_VER:I = 0x1

.field private static final MINOR_VER:I = 0x0

.field public static final PARAM_NODE_ID:Ljava/lang/String; = "nodeId"

.field public static final PROP_CACHE:Ljava/lang/String; = "gg.jdbc.cache"

.field public static final PROP_HOST:Ljava/lang/String; = "gg.jdbc.host"

.field public static final PROP_NODE_ID:Ljava/lang/String; = "gg.jdbc.nodeId"

.field public static final PROP_PORT:Ljava/lang/String; = "gg.jdbc.port"

.field private static final PROP_PREFIX:Ljava/lang/String; = "gg.jdbc."

.field public static final URL_PREFIX:Ljava/lang/String; = "jdbc:ignite://"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 225
    const-class v1, Lorg/apache/ignite/IgniteJdbcDriver;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/apache/ignite/IgniteJdbcDriver;->$assertionsDisabled:Z

    .line 262
    :try_start_0
    new-instance v1, Lorg/apache/ignite/IgniteJdbcDriver;

    invoke-direct {v1}, Lorg/apache/ignite/IgniteJdbcDriver;-><init>()V

    invoke-static {v1}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to register Ignite JDBC driver."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method private parseUrl(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 360
    if-eqz p1, :cond_0

    const-string v4, "jdbc:ignite://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "jdbc:ignite://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 363
    :cond_1
    const-string v4, "jdbc:ignite://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 365
    const-string v4, "\\?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "parts":[Ljava/lang/String;
    array-length v4, v1

    if-gt v4, v6, :cond_0

    .line 370
    array-length v4, v1

    if-ne v4, v6, :cond_2

    .line 371
    aget-object v4, v1, v3

    invoke-direct {p0, v4, p2}, Lorg/apache/ignite/IgniteJdbcDriver;->parseUrlParameters(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    :cond_2
    aget-object v4, v1, v2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 376
    sget-boolean v4, Lorg/apache/ignite/IgniteJdbcDriver;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    array-length v4, v1

    if-gtz v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 378
    :cond_3
    array-length v4, v1

    if-gt v4, v6, :cond_0

    .line 381
    array-length v4, v1

    if-ne v4, v6, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 382
    const-string v4, "gg.jdbc.cache"

    aget-object v5, v1, v3

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    :cond_4
    aget-object p1, v1, v2

    .line 386
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 388
    sget-boolean v4, Lorg/apache/ignite/IgniteJdbcDriver;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    array-length v4, v1

    if-gtz v4, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 390
    :cond_5
    array-length v4, v1

    if-gt v4, v6, :cond_0

    .line 393
    const-string v4, "gg.jdbc.host"

    aget-object v5, v1, v2

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    :try_start_0
    const-string v5, "gg.jdbc.port"

    array-length v4, v1

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 402
    goto :goto_0

    .line 396
    :cond_6
    const/16 v4, 0x2bcb

    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private parseUrlParameters(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 10
    .param p1, "urlParams"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 413
    const-string v8, "&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "params":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 416
    .local v4, "param":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "pair":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 421
    .restart local v3    # "pair":[Ljava/lang/String;
    .restart local v4    # "param":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gg.jdbc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v7

    invoke-virtual {p2, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "pair":[Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 424
    goto :goto_1
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v0, "jdbc:ignite://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/IgniteJdbcDriver;->parseUrl(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "java.util.logging is not used."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 284
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/IgniteJdbcDriver;->parseUrl(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    const/16 v1, 0x14

    new-array v0, v1, [Ljava/sql/DriverPropertyInfo;

    .line 289
    .local v0, "props":[Ljava/sql/DriverPropertyInfo;
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "Hostname"

    const-string v4, "gg.jdbc.host"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 290
    new-instance v1, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v2, "Port number"

    const-string v3, "gg.jdbc.port"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v1, v0, v5

    .line 291
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "Cache name"

    const-string v4, "gg.jdbc.cache"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 292
    const/4 v1, 0x3

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "Node ID"

    const-string v4, "gg.jdbc.nodeId"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 293
    const/4 v1, 0x4

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.protocol"

    const-string v4, "gg.client.protocol"

    const-string v5, "TCP"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Communication protocol (TCP or HTTP)."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 295
    const/4 v1, 0x5

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.connectTimeout"

    const-string v4, "gg.client.connectTimeout"

    const-string v5, "0"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Socket connection timeout."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 297
    const/4 v1, 0x6

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.tcp.noDelay"

    const-string v4, "gg.client.tcp.noDelay"

    const-string v5, "true"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Flag indicating whether TCP_NODELAY flag should be enabled for outgoing connections."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 299
    const/4 v1, 0x7

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.enabled"

    const-string v4, "gg.client.ssl.enabled"

    const-string v5, "false"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Flag indicating that SSL is needed for connection."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 301
    const/16 v1, 0x8

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.protocol"

    const-string v4, "gg.client.ssl.protocol"

    const-string v5, "TLS"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SSL protocol."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 303
    const/16 v1, 0x9

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.key.algorithm"

    const-string v4, "gg.client.ssl.key.algorithm"

    const-string v5, "SunX509"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Key manager algorithm."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 305
    const/16 v1, 0xa

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.keystore.location"

    const-string v4, "gg.client.ssl.keystore.location"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Key store to be used by client to connect with Ignite topology."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 308
    const/16 v1, 0xb

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.keystore.password"

    const-string v4, "gg.client.ssl.keystore.password"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Key store password."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 310
    const/16 v1, 0xc

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.keystore.type"

    const-string v4, "gg.client.ssl.keystore.type"

    const-string v5, "jks"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Key store type."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 312
    const/16 v1, 0xd

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.truststore.location"

    const-string v4, "gg.client.ssl.truststore.location"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Trust store to be used by client to connect with Ignite topology."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 315
    const/16 v1, 0xe

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.keystore.password"

    const-string v4, "gg.client.ssl.truststore.password"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Trust store password."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 317
    const/16 v1, 0xf

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.ssl.truststore.type"

    const-string v4, "gg.client.ssl.truststore.type"

    const-string v5, "jks"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Trust store type."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 319
    const/16 v1, 0x10

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.credentials"

    const-string v4, "gg.client.credentials"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Client credentials used in authentication process."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 321
    const/16 v1, 0x11

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.cache.top"

    const-string v4, "gg.client.cache.top"

    const-string v5, "false"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Flag indicating that topology is cached internally. Cache will be refreshed in the background with interval defined by topologyRefreshFrequency property (see below)."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 324
    const/16 v1, 0x12

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.topology.refresh"

    const-string v4, "gg.client.topology.refresh"

    const-string v5, "2000"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Topology cache refresh frequency (ms)."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 326
    const/16 v1, 0x13

    new-instance v2, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;

    const-string v3, "gg.client.idleTimeout"

    const-string v4, "gg.client.idleTimeout"

    const-string v5, "30000"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Maximum amount of time that connection can be idle before it is closed (ms)."

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V

    aput-object v2, v0, v1

    .line 329
    return-object v0
.end method

.method public jdbcCompliant()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method
