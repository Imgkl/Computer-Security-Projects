.class public Lorg/apache/ignite/spi/swapspace/SwapKey;
.super Ljava/lang/Object;
.source "SwapKey.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final part:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/SwapKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 46
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "part"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "part"    # I
    .param p3, "keyBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/SwapKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/SwapKey;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->key:Ljava/lang/Object;

    .line 67
    iput p2, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->part:I

    .line 68
    iput-object p3, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->keyBytes:[B

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 107
    check-cast v0, Lorg/apache/ignite/spi/swapspace/SwapKey;

    .line 109
    .local v0, "other":Lorg/apache/ignite/spi/swapspace/SwapKey;
    iget v3, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->part:I

    iget v4, v0, Lorg/apache/ignite/spi/swapspace/SwapKey;->part:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->key:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/spi/swapspace/SwapKey;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/apache/ignite/spi/swapspace/SwapKey;
    :cond_3
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public keyBytes([B)V
    .locals 1
    .param p1, "keyBytes"    # [B

    .prologue
    .line 96
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/SwapKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->keyBytes:[B

    .line 99
    return-void
.end method

.method public keyBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->keyBytes:[B

    return-object v0
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/SwapKey;->part:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
