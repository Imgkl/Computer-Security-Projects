.class public Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
.super Ljava/lang/Object;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY_FILTERS:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private byteOrder:Ljava/nio/ByteOrder;

.field private daemon:Z

.field private directBuf:Z

.field private directMode:Z

.field private filters:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

.field private formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field private gridName:Ljava/lang/String;

.field private idleTimeout:J

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

.field private port:I

.field private selectorCnt:I

.field private skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation
.end field

.field private sndQueueLimit:I

.field private sockRcvBufSize:I

.field private sockSndBufSize:I

.field private tcpNoDelay:Z

.field private writeTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2043
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->EMPTY_FILTERS:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    const-wide/16 v2, -0x1

    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder:Ljava/nio/ByteOrder;

    .line 2079
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sndQueueLimit:I

    .line 2091
    iput-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->idleTimeout:J

    .line 2094
    iput-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->writeTimeout:J

    return-void
.end method


# virtual methods
.method public address(Ljava/net/InetAddress;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2147
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->addr:Ljava/net/InetAddress;

    .line 2149
    return-object p0
.end method

.method public build()Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2112
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->addr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->port:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->selectorCnt:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->gridName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->tcpNoDelay:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directBuf:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sockSndBufSize:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sockRcvBufSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sndQueueLimit:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->daemon:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    :goto_0
    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lorg/apache/ignite/internal/util/nio/GridNioServer;-><init>(Ljava/net/InetAddress;ILorg/apache/ignite/IgniteLogger;ILjava/lang/String;ZZLjava/nio/ByteOrder;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;IIIZZLorg/apache/ignite/internal/util/nio/GridNioMetricsListener;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;Lorg/apache/ignite/internal/util/nio/GridNioServer$1;)V

    .line 2133
    .local v2, "ret":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->idleTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 2134
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->idleTimeout:J

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout(J)V

    .line 2136
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->writeTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 2137
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->writeTimeout:J

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->writeTimeout(J)V

    .line 2139
    :cond_1
    return-object v2

    .line 2112
    .end local v2    # "ret":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    :cond_2
    sget-object v20, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->EMPTY_FILTERS:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    goto :goto_0
.end method

.method public byteOrder(Ljava/nio/ByteOrder;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2218
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder:Ljava/nio/ByteOrder;

    .line 2220
    return-object p0
.end method

.method public daemon(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "daemon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2318
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->daemon:Z

    .line 2320
    return-object p0
.end method

.method public directBuffer(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "directBuf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2208
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directBuf:Z

    .line 2210
    return-object p0
.end method

.method public directMode(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "directMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2268
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directMode:Z

    .line 2270
    return-object p0
.end method

.method public varargs filters([Lorg/apache/ignite/internal/util/nio/GridNioFilter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "filters"    # [Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/util/nio/GridNioFilter;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2288
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters:[Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .line 2290
    return-object p0
.end method

.method public gridName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2188
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->gridName:Ljava/lang/String;

    .line 2190
    return-object p0
.end method

.method public idleTimeout(J)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 1
    .param p1, "idleTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2298
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->idleTimeout:J

    .line 2300
    return-object p0
.end method

.method public listener(Lorg/apache/ignite/internal/util/nio/GridNioServerListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<TT;>;)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2228
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    .local p1, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    .line 2230
    return-object p0
.end method

.method public logger(Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2168
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->log:Lorg/apache/ignite/IgniteLogger;

    .line 2170
    return-object p0
.end method

.method public messageFormatter(Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "formatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2328
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 2330
    return-object p0
.end method

.method public metricsListener(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "metricsLsnr"    # Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2278
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    .line 2280
    return-object p0
.end method

.method public port(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2158
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->port:I

    .line 2160
    return-object p0
.end method

.method public selectorCount(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "selectorCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2178
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->selectorCnt:I

    .line 2180
    return-object p0
.end method

.method public sendQueueLimit(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "sndQueueLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2258
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sndQueueLimit:I

    .line 2260
    return-object p0
.end method

.method public skipRecoveryPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2338
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    .local p1, "skipRecoveryPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 2340
    return-object p0
.end method

.method public socketReceiveBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "sockRcvBufSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2248
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sockRcvBufSize:I

    .line 2250
    return-object p0
.end method

.method public socketSendBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "sockSndBufSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2238
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sockSndBufSize:I

    .line 2240
    return-object p0
.end method

.method public tcpNoDelay(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 0
    .param p1, "tcpNoDelay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2198
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->tcpNoDelay:Z

    .line 2200
    return-object p0
.end method

.method public writeTimeout(J)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 1
    .param p1, "writeTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2308
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder<TT;>;"
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->writeTimeout:J

    .line 2310
    return-object p0
.end method
