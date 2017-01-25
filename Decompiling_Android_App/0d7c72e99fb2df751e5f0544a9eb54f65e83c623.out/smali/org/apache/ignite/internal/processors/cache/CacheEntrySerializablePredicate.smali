.class public Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;
.super Ljava/lang/Object;
.source "CacheEntrySerializablePredicate.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private bytes:[B

.field private p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p1, "p"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 94
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x63

    return v0
.end method

.method public entryLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 67
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 70
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 74
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->bytes:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->bytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 81
    :cond_1
    return-void
.end method

.method public predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 85
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 89
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->bytes:[B

    .line 90
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 126
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_0
    const-string v1, "bytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->bytes:[B

    .line 133
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 103
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 110
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :pswitch_0
    const-string v1, "bytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->bytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
