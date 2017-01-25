.class public Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;
.super Ljava/lang/Object;
.source "TxEntryValueHolder.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# annotations
.annotation runtime Lorg/apache/ignite/internal/IgniteCodeGeneratingFail;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private hasReadVal:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private hasWriteVal:Z

.field private op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private val:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x65

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x3

    return v0
.end method

.method public hasReadValue()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadVal:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadVal:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWriteValue()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    return v0
.end method

.method public marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "sharedCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<**>;"
    .local p2, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 135
    :cond_0
    return-void
.end method

.method public op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    return-object v0
.end method

.method public op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V
    .locals 0
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 110
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 191
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 225
    :goto_0
    return v1

    .line 194
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 225
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 196
    :pswitch_0
    const-string v1, "hasWriteVal"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    .line 198
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 206
    :pswitch_1
    const-string v1, "op"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 208
    .local v0, "opOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 209
    goto :goto_0

    .line 211
    :cond_2
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 213
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 216
    .end local v0    # "opOrd":B
    :pswitch_2
    const-string/jumbo v1, "val"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 218
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 219
    goto :goto_0

    .line 221
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 145
    :cond_0
    return-void
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 92
    return-void
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V
    .locals 3
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p3, "hasWriteVal"    # Z
    .param p4, "hasReadVal"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 65
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 67
    if-nez p3, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne p1, v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    .line 68
    if-nez p4, :cond_2

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne p1, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadVal:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 67
    goto :goto_1
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 156
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 160
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 163
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :pswitch_0
    const-string v0, "hasWriteVal"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 171
    :pswitch_1
    const-string v2, "op"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 172
    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 174
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 177
    :pswitch_2
    const-string/jumbo v2, "val"

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteVal:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    :goto_3
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 178
    goto :goto_0

    .line 177
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 180
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
