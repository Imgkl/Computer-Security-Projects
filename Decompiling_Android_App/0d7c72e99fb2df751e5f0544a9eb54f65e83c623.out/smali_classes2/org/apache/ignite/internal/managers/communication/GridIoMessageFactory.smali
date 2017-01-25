.class public Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;
.super Ljava/lang/Object;
.source "GridIoMessageFactory.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CUSTOM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final ext:[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->$assertionsDisabled:Z

    .line 56
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->CUSTOM:Ljava/util/Map;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)V
    .locals 0
    .param p1, "ext"    # [Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->ext:[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .line 66
    return-void
.end method

.method public static registerCustom(BLorg/apache/ignite/lang/IgniteOutClosure;)V
    .locals 2
    .param p0, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "c":Lorg/apache/ignite/lang/IgniteOutClosure;, "Lorg/apache/ignite/lang/IgniteOutClosure<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 631
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->CUSTOM:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method


# virtual methods
.method public create(B)Lorg/apache/ignite/plugin/extensions/communication/Message;
    .locals 9
    .param p1, "type"    # B

    .prologue
    .line 70
    const/4 v5, 0x0

    .line 72
    .local v5, "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    packed-switch p1, :pswitch_data_0

    .line 599
    :pswitch_0
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->ext:[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    if-eqz v6, :cond_0

    .line 600
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->ext:[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .local v0, "arr$":[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 601
    .local v2, "factory":Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    invoke-interface {v2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;->create(B)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v5

    .line 603
    if-eqz v5, :cond_2

    .line 608
    .end local v0    # "arr$":[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .end local v2    # "factory":Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    if-nez v5, :cond_1

    .line 609
    sget-object v6, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;->CUSTOM:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteOutClosure;

    .line 611
    .local v1, "c":Lorg/apache/ignite/lang/IgniteOutClosure;, "Lorg/apache/ignite/lang/IgniteOutClosure<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    if-eqz v1, :cond_1

    .line 612
    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteOutClosure;->apply()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    check-cast v5, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 616
    .end local v1    # "c":Lorg/apache/ignite/lang/IgniteOutClosure;, "Lorg/apache/ignite/lang/IgniteOutClosure<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    .line 617
    new-instance v6, Lorg/apache/ignite/IgniteException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid message type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 74
    :pswitch_1
    new-instance v5, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;-><init>()V

    .line 76
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 79
    :pswitch_2
    new-instance v5, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>()V

    .line 81
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 84
    :pswitch_3
    new-instance v5, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;-><init>()V

    .line 86
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 89
    :pswitch_4
    new-instance v5, Lorg/apache/ignite/internal/GridJobCancelRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridJobCancelRequest;-><init>()V

    .line 91
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 94
    :pswitch_5
    new-instance v5, Lorg/apache/ignite/internal/GridJobExecuteRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridJobExecuteRequest;-><init>()V

    .line 96
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 99
    :pswitch_6
    new-instance v5, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridJobExecuteResponse;-><init>()V

    .line 101
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 104
    :pswitch_7
    new-instance v5, Lorg/apache/ignite/internal/GridJobSiblingsRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridJobSiblingsRequest;-><init>()V

    .line 106
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 109
    :pswitch_8
    new-instance v5, Lorg/apache/ignite/internal/GridJobSiblingsResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridJobSiblingsResponse;-><init>()V

    .line 111
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 114
    :pswitch_9
    new-instance v5, Lorg/apache/ignite/internal/GridTaskCancelRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridTaskCancelRequest;-><init>()V

    .line 116
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 119
    :pswitch_a
    new-instance v5, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/GridTaskSessionRequest;-><init>()V

    .line 121
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 124
    :pswitch_b
    new-instance v5, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;-><init>()V

    .line 126
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 129
    :pswitch_c
    new-instance v5, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;-><init>()V

    .line 131
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 134
    :pswitch_d
    new-instance v5, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;-><init>()V

    .line 136
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 139
    :pswitch_e
    new-instance v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>()V

    .line 141
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 144
    :pswitch_f
    new-instance v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;-><init>()V

    .line 146
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 149
    :pswitch_10
    new-instance v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;-><init>()V

    .line 151
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 154
    :pswitch_11
    new-instance v5, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;-><init>()V

    .line 156
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto :goto_1

    .line 159
    :pswitch_12
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;-><init>()V

    .line 161
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 164
    :pswitch_13
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;-><init>()V

    .line 166
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 169
    :pswitch_14
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;-><init>()V

    .line 171
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 174
    :pswitch_15
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;-><init>()V

    .line 176
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 179
    :pswitch_16
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;-><init>()V

    .line 181
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 184
    :pswitch_17
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;-><init>()V

    .line 186
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 189
    :pswitch_18
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;-><init>()V

    .line 191
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 194
    :pswitch_19
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;-><init>()V

    .line 196
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 199
    :pswitch_1a
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;-><init>()V

    .line 201
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 204
    :pswitch_1b
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;-><init>()V

    .line 206
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 209
    :pswitch_1c
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;-><init>()V

    .line 211
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 214
    :pswitch_1d
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;-><init>()V

    .line 216
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 219
    :pswitch_1e
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;-><init>()V

    .line 221
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 224
    :pswitch_1f
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;-><init>()V

    .line 226
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 229
    :pswitch_20
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;-><init>()V

    .line 231
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 234
    :pswitch_21
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;-><init>()V

    .line 236
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 239
    :pswitch_22
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;-><init>()V

    .line 241
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 244
    :pswitch_23
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;-><init>()V

    .line 246
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 249
    :pswitch_24
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;-><init>()V

    .line 251
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 254
    :pswitch_25
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;-><init>()V

    .line 256
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 259
    :pswitch_26
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;-><init>()V

    .line 261
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 264
    :pswitch_27
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;-><init>()V

    .line 266
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 269
    :pswitch_28
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;-><init>()V

    .line 271
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 274
    :pswitch_29
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;-><init>()V

    .line 276
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 279
    :pswitch_2a
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;-><init>()V

    .line 281
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 284
    :pswitch_2b
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;-><init>()V

    .line 286
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 289
    :pswitch_2c
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;-><init>()V

    .line 291
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 294
    :pswitch_2d
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;-><init>()V

    .line 296
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 299
    :pswitch_2e
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;-><init>()V

    .line 301
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 304
    :pswitch_2f
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;-><init>()V

    .line 306
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 309
    :pswitch_30
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;-><init>()V

    .line 311
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 314
    :pswitch_31
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;-><init>()V

    .line 316
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 319
    :pswitch_32
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;-><init>()V

    .line 321
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 324
    :pswitch_33
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;-><init>()V

    .line 326
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 329
    :pswitch_34
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;-><init>()V

    .line 331
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 334
    :pswitch_35
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;-><init>()V

    .line 336
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 339
    :pswitch_36
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;-><init>()V

    .line 341
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 344
    :pswitch_37
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;-><init>()V

    .line 346
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 349
    :pswitch_38
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;-><init>()V

    .line 351
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 354
    :pswitch_39
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;-><init>()V

    .line 356
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 359
    :pswitch_3a
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;-><init>()V

    .line 361
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 364
    :pswitch_3b
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;-><init>()V

    .line 366
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 369
    :pswitch_3c
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;-><init>()V

    .line 371
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 374
    :pswitch_3d
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>()V

    .line 376
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 379
    :pswitch_3e
    new-instance v5, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;-><init>()V

    .line 381
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 384
    :pswitch_3f
    new-instance v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>()V

    .line 386
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 389
    :pswitch_40
    new-instance v5, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;-><init>()V

    .line 391
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 394
    :pswitch_41
    new-instance v5, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;-><init>()V

    .line 396
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 399
    :pswitch_42
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;-><init>()V

    .line 401
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 404
    :pswitch_43
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>()V

    .line 406
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 409
    :pswitch_44
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;-><init>()V

    .line 411
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 414
    :pswitch_45
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;-><init>()V

    .line 416
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 419
    :pswitch_46
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>()V

    .line 421
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 424
    :pswitch_47
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;-><init>()V

    .line 426
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 429
    :pswitch_48
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;-><init>()V

    .line 431
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 434
    :pswitch_49
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;-><init>()V

    .line 436
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 439
    :pswitch_4a
    new-instance v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;-><init>()V

    .line 441
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 444
    :pswitch_4b
    new-instance v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;-><init>()V

    .line 446
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 449
    :pswitch_4c
    new-instance v5, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;-><init>()V

    .line 451
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 454
    :pswitch_4d
    new-instance v5, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;-><init>()V

    .line 456
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 459
    :pswitch_4e
    new-instance v5, Lorg/apache/ignite/internal/util/GridByteArrayList;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/util/GridByteArrayList;-><init>()V

    .line 461
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 464
    :pswitch_4f
    new-instance v5, Lorg/apache/ignite/internal/util/GridLongList;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/util/GridLongList;-><init>()V

    .line 466
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 469
    :pswitch_50
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>()V

    .line 471
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 474
    :pswitch_51
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;-><init>()V

    .line 476
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 479
    :pswitch_52
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>()V

    .line 481
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 484
    :pswitch_53
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;-><init>()V

    .line 486
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 489
    :pswitch_54
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;-><init>()V

    .line 491
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 494
    :pswitch_55
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;-><init>()V

    .line 496
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 499
    :pswitch_56
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;-><init>()V

    .line 501
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 504
    :pswitch_57
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;-><init>()V

    .line 506
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 509
    :pswitch_58
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;-><init>()V

    .line 511
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 514
    :pswitch_59
    new-instance v5, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>()V

    .line 516
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 519
    :pswitch_5a
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;-><init>()V

    .line 521
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 524
    :pswitch_5b
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;-><init>()V

    .line 526
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 529
    :pswitch_5c
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateContainsValue;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateContainsValue;-><init>()V

    .line 531
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 534
    :pswitch_5d
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>()V

    .line 536
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 539
    :pswitch_5e
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;-><init>()V

    .line 541
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 544
    :pswitch_5f
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    .line 546
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 549
    :pswitch_60
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;-><init>()V

    .line 551
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 554
    :pswitch_61
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;-><init>()V

    .line 556
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 559
    :pswitch_62
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;-><init>()V

    .line 561
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 564
    :pswitch_63
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;-><init>()V

    .line 566
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 569
    :pswitch_64
    new-instance v5, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryCancelRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryCancelRequest;-><init>()V

    .line 571
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 574
    :pswitch_65
    new-instance v5, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryFailResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryFailResponse;-><init>()V

    .line 576
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 579
    :pswitch_66
    new-instance v5, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;-><init>()V

    .line 581
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 584
    :pswitch_67
    new-instance v5, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;-><init>()V

    .line 586
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 589
    :pswitch_68
    new-instance v5, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;-><init>()V

    .line 591
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 594
    :pswitch_69
    new-instance v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>()V

    .line 596
    .restart local v5    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    goto/16 :goto_1

    .line 600
    .restart local v0    # "arr$":[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .restart local v2    # "factory":Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 619
    .end local v0    # "arr$":[Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .end local v2    # "factory":Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    return-object v5

    .line 72
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4a
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
    .end packed-switch
.end method
