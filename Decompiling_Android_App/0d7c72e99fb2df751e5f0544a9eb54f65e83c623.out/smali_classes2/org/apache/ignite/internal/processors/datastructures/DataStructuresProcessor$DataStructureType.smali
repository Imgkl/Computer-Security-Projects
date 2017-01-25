.class final enum Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
.super Ljava/lang/Enum;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataStructureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum ATOMIC_LONG:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum ATOMIC_REF:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum ATOMIC_SEQ:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum ATOMIC_STAMPED:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum COUNT_DOWN_LATCH:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field public static final enum SET:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1207
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "ATOMIC_LONG"

    const-class v2, Lorg/apache/ignite/IgniteAtomicLong;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_LONG:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1210
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "ATOMIC_REF"

    const-class v2, Lorg/apache/ignite/IgniteAtomicReference;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_REF:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1213
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "ATOMIC_SEQ"

    const-class v2, Lorg/apache/ignite/IgniteAtomicSequence;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_SEQ:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1216
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "ATOMIC_STAMPED"

    const-class v2, Lorg/apache/ignite/IgniteAtomicStamped;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_STAMPED:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1219
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "COUNT_DOWN_LATCH"

    const-class v2, Lorg/apache/ignite/IgniteCountDownLatch;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->COUNT_DOWN_LATCH:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1222
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "QUEUE"

    const/4 v2, 0x5

    const-class v3, Lorg/apache/ignite/IgniteQueue;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1225
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const-string v1, "SET"

    const/4 v2, 0x6

    const-class v3, Lorg/apache/ignite/IgniteSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->SET:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1205
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_LONG:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_REF:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_SEQ:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_STAMPED:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->COUNT_DOWN_LATCH:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->SET:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->$VALUES:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1228
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->values()[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->VALS:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1237
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->name:Ljava/lang/String;

    .line 1238
    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1252
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->VALS:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->VALS:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1205
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
    .locals 1

    .prologue
    .line 1205
    sget-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->$VALUES:[Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    return-object v0
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->name:Ljava/lang/String;

    return-object v0
.end method
