.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
.super Ljava/lang/Object;
.source "IgfsFileAffinityRange.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final RANGE_STATUS_INITIAL:I = 0x0

.field public static final RANGE_STATUS_MOVED:I = 0x2

.field public static final RANGE_STATUS_MOVING:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private affKey:Lorg/apache/ignite/lang/IgniteUuid;

.field private done:Z

.field private endOff:J

.field private startOff:J

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 67
    return-void
.end method

.method constructor <init>(JJLorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "startOff"    # J
    .param p3, "endOff"    # J
    .param p5, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 75
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    .line 76
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    .line 77
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 78
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V
    .locals 2
    .param p1, "other"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p2, "status"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 87
    iget-wide v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    .line 88
    iget-wide v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    .line 89
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 91
    iput p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 92
    return-void
.end method


# virtual methods
.method public affinityKey()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public belongs(J)Z
    .locals 3
    .param p1, "blockStartOff"    # J

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public concat(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .locals 7
    .param p1, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    const/4 v1, 0x0

    .line 218
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>(JJLorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0x44

    return v0
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->done:Z

    return v0
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endOffset()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    return-wide v0
.end method

.method public expand(JI)V
    .locals 5
    .param p1, "blockStartOff"    # J
    .param p3, "expansionSize"    # I

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 162
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to expand range [endOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", blockStartOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expansionSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 165
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    add-int/lit8 v2, p3, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_2
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x5

    return v0
.end method

.method public greater(J)Z
    .locals 3
    .param p1, "blockStartOff"    # J

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public less(J)Z
    .locals 3
    .param p1, "blockStartOff"    # J

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDone()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->done:Z

    .line 226
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 259
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 261
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    .line 262
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    .line 263
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 316
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 362
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :pswitch_0
    const-string v1, "affKey"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 323
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 329
    :pswitch_1
    const-string v1, "done"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->done:Z

    .line 331
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 337
    :pswitch_2
    const-string v1, "endOff"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    .line 339
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 345
    :pswitch_3
    const-string v1, "startOff"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    .line 347
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 353
    :pswitch_4
    const-string v1, "status"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 355
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public regionEqual(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Z
    .locals 4
    .param p1, "other"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .prologue
    .line 242
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public split(J)Ljava/util/Collection;
    .locals 15
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    iget-wide v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    .line 183
    .local v8, "len":J
    cmp-long v6, v8, p1

    if-lez v6, :cond_0

    .line 184
    div-long v10, v8, p1

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    long-to-int v7, v10

    .line 186
    .local v7, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v0, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    .line 190
    .local v2, "pos":J
    :goto_0
    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    cmp-long v6, v2, v10

    if-gez v6, :cond_1

    .line 191
    add-long v10, v2, p1

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    iget-wide v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 193
    .local v4, "end":J
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>(JJLorg/apache/ignite/lang/IgniteUuid;)V

    .line 195
    .local v1, "part":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    iget v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    iput v6, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    .line 197
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    const-wide/16 v10, 0x1

    add-long v2, v4, v10

    .line 200
    goto :goto_0

    .line 205
    .end local v0    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .end local v2    # "pos":J
    .end local v4    # "end":J
    .end local v7    # "size":I
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public startOffset()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    return-wide v0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 249
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 251
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 252
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 253
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 276
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :pswitch_0
    const-string v1, "affKey"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 284
    :pswitch_1
    const-string v1, "done"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->done:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 290
    :pswitch_2
    const-string v1, "endOff"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOff:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 296
    :pswitch_3
    const-string v1, "startOff"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOff:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 302
    :pswitch_4
    const-string v1, "status"

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
