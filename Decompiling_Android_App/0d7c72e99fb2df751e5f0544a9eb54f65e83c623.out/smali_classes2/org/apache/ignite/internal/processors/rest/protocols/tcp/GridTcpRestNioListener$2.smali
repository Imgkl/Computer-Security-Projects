.class synthetic Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;
.super Ljava/lang/Object;
.source "GridTcpRestNioListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryOperation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryOperation:[I

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryOperation:[I

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->EXECUTE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryOperation:[I

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->FETCH:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryOperation:[I

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
