.class public final enum Lorg/apache/ignite/transactions/TransactionIsolation;
.super Ljava/lang/Enum;
.source "TransactionIsolation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/transactions/TransactionIsolation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/transactions/TransactionIsolation;

.field public static final enum READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

.field public static final enum REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

.field public static final enum SERIALIZABLE:Lorg/apache/ignite/transactions/TransactionIsolation;

.field private static final VALS:[Lorg/apache/ignite/transactions/TransactionIsolation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/apache/ignite/transactions/TransactionIsolation;

    const-string v1, "READ_COMMITTED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/transactions/TransactionIsolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 31
    new-instance v0, Lorg/apache/ignite/transactions/TransactionIsolation;

    const-string v1, "REPEATABLE_READ"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/transactions/TransactionIsolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 34
    new-instance v0, Lorg/apache/ignite/transactions/TransactionIsolation;

    const-string v1, "SERIALIZABLE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/transactions/TransactionIsolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->SERIALIZABLE:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/transactions/TransactionIsolation;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->SERIALIZABLE:Lorg/apache/ignite/transactions/TransactionIsolation;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->$VALUES:[Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 37
    invoke-static {}, Lorg/apache/ignite/transactions/TransactionIsolation;->values()[Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->VALS:[Lorg/apache/ignite/transactions/TransactionIsolation;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 47
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->VALS:[Lorg/apache/ignite/transactions/TransactionIsolation;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->VALS:[Lorg/apache/ignite/transactions/TransactionIsolation;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->$VALUES:[Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v0}, [Lorg/apache/ignite/transactions/TransactionIsolation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method
