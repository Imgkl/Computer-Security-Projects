.class final Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Ljavax/cache/processor/EntryProcessor;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/processor/EntryProcessor",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
        "[B",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private data:[B

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1576
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1594
    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "data"    # [B

    .prologue
    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1604
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1605
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, p2

    add-int/2addr v0, p1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too much data [start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1607
    :cond_2
    iput p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    .line 1608
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->data:[B

    .line 1609
    return-void
.end method

.method synthetic constructor <init>(I[BLorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;

    .prologue
    .line 1577
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/cache/processor/MutableEntry;
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 1576
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/MutableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "entry":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    const/4 v5, 0x0

    .line 1613
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1615
    .local v0, "e":[B
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->data:[B

    array-length v1, v3

    .line 1617
    .local v1, "size":I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_2

    .line 1618
    :cond_0
    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    add-int/2addr v3, v1

    new-array v0, v3, [B

    .line 1629
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->data:[B

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    invoke-static {v3, v5, v0, v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 1631
    invoke-interface {p1, v0}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 1633
    const/4 v3, 0x0

    return-object v3

    .line 1619
    :cond_2
    array-length v3, v0

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    .line 1621
    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    add-int/2addr v3, v1

    new-array v2, v3, [B

    .line 1623
    .local v2, "tmp":[B
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 1625
    move-object v0, v2

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1644
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    .line 1645
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->data:[B

    .line 1646
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1650
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;

    const-string v2, "start"

    iget v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "data.length"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->data:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1638
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->start:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1639
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;->data:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 1640
    return-void
.end method
