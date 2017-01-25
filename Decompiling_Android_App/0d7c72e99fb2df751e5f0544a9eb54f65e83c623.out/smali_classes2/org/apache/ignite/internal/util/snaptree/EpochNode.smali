.class abstract Lorg/apache/ignite/internal/util/snaptree/EpochNode;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "EpochNode.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/snaptree/EpochNode$1;,
        Lorg/apache/ignite/internal/util/snaptree/EpochNode$Child;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ALL_CHILDREN_CLOSED:J = 0x0L

.field private static final ANY_CHILD_PRESENT:J = 0xff0000L

.field private static final BF:I = 0x8

.field private static final BF_MASK:I = 0x7

.field private static final CHILD_CLOSED_SHIFT:I = 0x18

.field private static final CHILD_PRESENT_SHIFT:I = 0x10

.field private static final CLOSED_MASK:J

.field private static final CLOSED_VALUE:J

.field private static final CLOSER_HEAD_START:I = 0x3e8

.field private static final DATA_SUM_SHIFT:I = 0x20

.field private static final ENTRY_COUNT_MASK:J = 0x7fffL

.field private static final ENTRY_FAST_PATH_MASK:J = 0xffc000L

.field private static final LOG_BF:I = 0x3

.field private static final MARK:J = 0x8000L

.field private static final MAX_LEVELS:I

.field private static final TRIES_BEFORE_SUBTREE:I = 0x2

.field private static final childrenUpdaters:[Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _child0:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child1:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child2:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child3:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child4:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child5:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child6:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private volatile _child7:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private final _parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

.field private final _whichInParent:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->$assertionsDisabled:Z

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->log8(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->MAX_LEVELS:I

    .line 72
    const-wide v4, 0xff000000L

    sput-wide v4, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->ALL_CHILDREN_CLOSED:J

    .line 103
    sget-wide v4, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->ALL_CHILDREN_CLOSED:J

    or-long/2addr v4, v8

    const-wide/16 v6, 0x7fff

    or-long/2addr v4, v6

    sput-wide v4, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->CLOSED_MASK:J

    .line 104
    sget-wide v4, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->ALL_CHILDREN_CLOSED:J

    or-long/2addr v4, v8

    sput-wide v4, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->CLOSED_VALUE:J

    .line 128
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v4, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v5, "_child0"

    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    aput-object v3, v0, v2

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child1"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child2"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child3"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child4"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child5"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child6"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-class v3, Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    const-string v4, "_child7"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childrenUpdaters:[Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void

    :cond_0
    move v0, v2

    .line 41
    goto/16 :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_whichInParent:I

    .line 162
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;I)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .param p2, "whichInParent"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    .line 166
    iput p2, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_whichInParent:I

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;ILorg/apache/ignite/internal/util/snaptree/EpochNode$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/snaptree/EpochNode$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;-><init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;I)V

    return-void
.end method

.method private attemptArrive(II)Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 8
    .param p1, "id"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v4, 0x0

    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "tries":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v2

    .line 249
    .local v2, "state":J
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isMarked(J)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v4

    .line 271
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :cond_0
    :goto_1
    return-object p0

    .line 252
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :cond_1
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isAnyChildPresent(J)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    if-lt v1, v5, :cond_5

    sget v5, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->MAX_LEVELS:I

    if-ge p2, v5, :cond_5

    .line 257
    :cond_2
    if-nez p1, :cond_3

    .line 258
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getIdentity()I

    move-result p1

    .line 260
    :cond_3
    and-int/lit8 v5, p1, 0x7

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getOrCreateChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    .line 261
    .local v0, "child":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    if-nez v0, :cond_4

    move-object p0, v4

    .line 262
    goto :goto_1

    .line 264
    :cond_4
    shr-int/lit8 v4, p1, 0x3

    add-int/lit8 v5, p2, 0x1

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->attemptArrive(II)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object p0

    goto :goto_1

    .line 266
    .end local v0    # "child":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :cond_5
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->mayArrive(J)Z

    move-result v5

    if-nez v5, :cond_6

    .line 267
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "maximum arrival count of 32767 exceeded"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_6
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withArrive(J)J

    move-result-wide v6

    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    add-int/lit8 v1, v1, 0x1

    .line 275
    goto :goto_0
.end method

.method private static childClosedBit(I)J
    .locals 3
    .param p0, "which"    # I

    .prologue
    .line 73
    const-wide/16 v0, 0x1

    add-int/lit8 v2, p0, 0x18

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private childIsNowClosed(IJ)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "childState"    # J

    .prologue
    .line 308
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v2

    .line 309
    .local v2, "state":J
    invoke-static {v2, v3, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isChildClosed(JI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    invoke-static {v2, v3, p1, p2, p3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withChildClosed(JIJ)J

    move-result-wide v0

    .line 314
    .local v0, "after":J
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isClosed(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->newlyClosed(J)V

    goto :goto_0
.end method

.method private static childPresentBit(I)J
    .locals 3
    .param p0, "which"    # I

    .prologue
    .line 83
    const-wide/16 v0, 0x1

    add-int/lit8 v2, p0, 0x10

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private constructPresentChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 3
    .param p1, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode$Child;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode$Child;-><init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;ILorg/apache/ignite/internal/util/snaptree/EpochNode$1;)V

    .line 200
    .local v0, "n":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    sget-object v1, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childrenUpdaters:[Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    aget-object v1, v1, p1

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "n":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :goto_0
    return-object v0

    .restart local v0    # "n":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChildFromField(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    goto :goto_0
.end method

.method private createChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 210
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v0

    .line 211
    .local v0, "state":J
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isMarked(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChild(JI)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v2

    .line 218
    :goto_0
    return-object v2

    .line 215
    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withChildPresent(JI)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->constructPresentChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v2

    goto :goto_0
.end method

.method private static dataSum(J)I
    .locals 2
    .param p0, "state"    # J

    .prologue
    .line 68
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static entryCount(J)I
    .locals 2
    .param p0, "state"    # J

    .prologue
    .line 97
    const-wide/16 v0, 0x7fff

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private getChild(JI)Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 3
    .param p1, "state"    # J
    .param p3, "which"    # I

    .prologue
    .line 190
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isChildPresent(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    const/4 v0, 0x0

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChildFromField(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    .line 194
    .local v0, "existing":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->constructPresentChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    goto :goto_0
.end method

.method private getChildFromField(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child0:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child1:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child2:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child3:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 181
    :pswitch_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child4:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 182
    :pswitch_5
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child5:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 183
    :pswitch_6
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child6:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 184
    :pswitch_7
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_child7:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getIdentity()I
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x7

    sub-int v1, v0, v1

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    return v1
.end method

.method private getOrCreateChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChildFromField(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    .line 205
    .local v0, "existing":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    if-eqz v0, :cond_0

    .end local v0    # "existing":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :goto_0
    return-object v0

    .restart local v0    # "existing":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->createChild(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    goto :goto_0
.end method

.method private static isAllChildrenClosed(J)Z
    .locals 4
    .param p0, "state"    # J

    .prologue
    .line 79
    sget-wide v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->ALL_CHILDREN_CLOSED:J

    and-long/2addr v0, p0

    sget-wide v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->ALL_CHILDREN_CLOSED:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAnyChildPresent(J)Z
    .locals 4
    .param p0, "state"    # J

    .prologue
    .line 86
    const-wide/32 v0, 0xff0000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChildClosed(JI)Z
    .locals 4
    .param p0, "state"    # J
    .param p2, "which"    # I

    .prologue
    .line 74
    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childClosedBit(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChildPresent(JI)Z
    .locals 4
    .param p0, "state"    # J
    .param p2, "which"    # I

    .prologue
    .line 84
    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childPresentBit(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isClosed(J)Z
    .locals 4
    .param p0, "state"    # J

    .prologue
    .line 105
    sget-wide v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->CLOSED_MASK:J

    and-long/2addr v0, p0

    sget-wide v2, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->CLOSED_VALUE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEntryFastPath(J)Z
    .locals 4
    .param p0, "state"    # J

    .prologue
    .line 109
    const-wide/32 v0, 0xffc000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMarked(J)Z
    .locals 4
    .param p0, "state"    # J

    .prologue
    .line 89
    const-wide/32 v0, 0x8000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log8(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static mayArrive(J)Z
    .locals 4
    .param p0, "state"    # J

    .prologue
    .line 100
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->entryCount(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x7fff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mayLeave(J)Z
    .locals 2
    .param p0, "state"    # J

    .prologue
    .line 101
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->entryCount(J)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newlyClosed(J)V
    .locals 3
    .param p1, "state"    # J

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    iget v1, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_whichInParent:I

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childIsNowClosed(IJ)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->dataSum(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->onClosed(I)V

    goto :goto_0
.end method

.method private static withArrive(J)J
    .locals 2
    .param p0, "state"    # J

    .prologue
    .line 98
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static withChildClosed(JIJ)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "which"    # I
    .param p3, "childState"    # J

    .prologue
    .line 76
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isChildClosed(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childClosedBit(I)J

    move-result-wide v0

    or-long/2addr v0, p0

    invoke-static {p3, p4}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->dataSum(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withDataDelta(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static withChildPresent(JI)J
    .locals 2
    .param p0, "state"    # J
    .param p2, "which"    # I

    .prologue
    .line 85
    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->childPresentBit(I)J

    move-result-wide v0

    or-long/2addr v0, p0

    return-wide v0
.end method

.method private static withDataDelta(JI)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "delta"    # I

    .prologue
    .line 69
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static withLeave(JI)J
    .locals 2
    .param p0, "state"    # J
    .param p2, "dataDelta"    # I

    .prologue
    .line 99
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1, p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withDataDelta(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static withMarked(J)J
    .locals 6
    .param p0, "state"    # J

    .prologue
    .line 92
    long-to-int v1, p0

    xor-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v0, v1, 0xff

    .line 93
    .local v0, "missingChildren":I
    const-wide/32 v2, 0x8000

    or-long/2addr v2, p0

    int-to-long v4, v0

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v0

    .line 228
    .local v0, "state":J
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isEntryFastPath(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withArrive(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->attemptArrive(II)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object p0

    goto :goto_0
.end method

.method public attemptDataSum()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 399
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v0

    .line 400
    .local v0, "state":J
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isAnyChildPresent(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->entryCount(J)I

    move-result v2

    if-nez v2, :cond_0

    .line 404
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->dataSum(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 407
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public beginClose()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    .line 325
    const/4 v2, 0x0

    .line 328
    .local v2, "attempts":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 330
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v8

    .line 331
    .local v8, "state":J
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isClosed(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isMarked(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 338
    const/16 v11, 0x3e8

    if-lt v2, v11, :cond_0

    .line 361
    :cond_3
    const/4 v10, 0x0

    .local v10, "which":I
    :goto_1
    if-ge v10, v12, :cond_6

    .line 362
    invoke-direct {p0, v8, v9, v10}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChild(JI)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v3

    .line 363
    .local v3, "child":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    if-eqz v3, :cond_4

    .line 364
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->beginClose()V

    .line 361
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 345
    .end local v3    # "child":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .end local v10    # "which":I
    :cond_5
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withMarked(J)J

    move-result-wide v0

    .line 346
    .local v0, "after":J
    invoke-virtual {p0, v8, v9, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 347
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isAllChildrenClosed(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 348
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isClosed(J)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    if-nez v11, :cond_1

    .line 350
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->dataSum(J)I

    move-result v11

    invoke-virtual {p0, v11}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->onClosed(I)V

    goto :goto_0

    .line 371
    .end local v0    # "after":J
    .restart local v10    # "which":I
    :cond_6
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v4

    .line 372
    .local v4, "before":J
    move-wide v0, v4

    .line 373
    .restart local v0    # "after":J
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_8

    .line 374
    invoke-static {v4, v5, v10}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isChildClosed(JI)Z

    move-result v11

    if-nez v11, :cond_7

    .line 375
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChildFromField(I)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v6

    .line 376
    .local v6, "childState":J
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isClosed(J)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 377
    invoke-static {v0, v1, v10, v6, v7}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withChildClosed(JIJ)J

    move-result-wide v0

    .line 373
    .end local v6    # "childState":J
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 381
    :cond_8
    cmp-long v11, v4, v0

    if-eqz v11, :cond_1

    .line 384
    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 385
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isClosed(J)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->_parent:Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    if-nez v11, :cond_1

    .line 386
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->dataSum(J)I

    move-result v11

    invoke-virtual {p0, v11}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->onClosed(I)V

    goto :goto_0
.end method

.method computeSpread()I
    .locals 6

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v2

    .line 414
    .local v2, "state":J
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isAnyChildPresent(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "sum":I
    const/4 v4, 0x0

    .local v4, "which":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    .line 417
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->getChild(JI)Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    .line 418
    .local v0, "child":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->computeSpread()I

    move-result v5

    add-int/2addr v1, v5

    .line 416
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    .end local v0    # "child":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .end local v1    # "sum":I
    .end local v4    # "which":I
    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public leave(I)V
    .locals 6
    .param p1, "dataDelta"    # I

    .prologue
    .line 281
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->get()J

    move-result-wide v2

    .line 282
    .local v2, "state":J
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->mayLeave(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "incorrect call to Epoch.leave"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_1
    invoke-static {v2, v3, p1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->withLeave(JI)J

    move-result-wide v0

    .line 286
    .local v0, "after":J
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->isClosed(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->newlyClosed(J)V

    .line 290
    :cond_2
    return-void
.end method

.method protected abstract onClosed(I)V
.end method
