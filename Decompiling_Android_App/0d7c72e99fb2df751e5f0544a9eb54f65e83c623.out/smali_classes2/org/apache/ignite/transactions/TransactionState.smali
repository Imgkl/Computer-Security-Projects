.class public final enum Lorg/apache/ignite/transactions/TransactionState;
.super Ljava/lang/Enum;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/transactions/TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum PREPARED:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum PREPARING:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

.field public static final enum UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

.field private static final VALS:[Lorg/apache/ignite/transactions/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    .line 30
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    .line 33
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    .line 36
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "MARKED_ROLLBACK"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    .line 39
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "COMMITTING"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    .line 42
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "COMMITTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    .line 45
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "ROLLING_BACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    .line 48
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "ROLLED_BACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    .line 51
    new-instance v0, Lorg/apache/ignite/transactions/TransactionState;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/transactions/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/ignite/transactions/TransactionState;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->$VALUES:[Lorg/apache/ignite/transactions/TransactionState;

    .line 54
    invoke-static {}, Lorg/apache/ignite/transactions/TransactionState;->values()[Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/transactions/TransactionState;->VALS:[Lorg/apache/ignite/transactions/TransactionState;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionState;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 63
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/transactions/TransactionState;->VALS:[Lorg/apache/ignite/transactions/TransactionState;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/transactions/TransactionState;->VALS:[Lorg/apache/ignite/transactions/TransactionState;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/transactions/TransactionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/transactions/TransactionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/transactions/TransactionState;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/transactions/TransactionState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/transactions/TransactionState;->$VALUES:[Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v0}, [Lorg/apache/ignite/transactions/TransactionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/transactions/TransactionState;

    return-object v0
.end method
