.class public final enum Lorg/apache/ignite/transactions/TransactionConcurrency;
.super Ljava/lang/Enum;
.source "TransactionConcurrency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/transactions/TransactionConcurrency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/transactions/TransactionConcurrency;

.field public static final enum OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

.field public static final enum PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

.field private static final VALS:[Lorg/apache/ignite/transactions/TransactionConcurrency;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/apache/ignite/transactions/TransactionConcurrency;

    const-string v1, "OPTIMISTIC"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/transactions/TransactionConcurrency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 31
    new-instance v0, Lorg/apache/ignite/transactions/TransactionConcurrency;

    const-string v1, "PESSIMISTIC"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/transactions/TransactionConcurrency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionConcurrency;->OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->$VALUES:[Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 34
    invoke-static {}, Lorg/apache/ignite/transactions/TransactionConcurrency;->values()[Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->VALS:[Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 43
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->VALS:[Lorg/apache/ignite/transactions/TransactionConcurrency;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->VALS:[Lorg/apache/ignite/transactions/TransactionConcurrency;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/transactions/TransactionConcurrency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->$VALUES:[Lorg/apache/ignite/transactions/TransactionConcurrency;

    invoke-virtual {v0}, [Lorg/apache/ignite/transactions/TransactionConcurrency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method
