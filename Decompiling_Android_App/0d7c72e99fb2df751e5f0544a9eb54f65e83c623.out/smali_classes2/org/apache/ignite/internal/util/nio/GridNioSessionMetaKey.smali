.class public final enum Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;
.super Ljava/lang/Enum;
.source "GridNioSessionMetaKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final enum LAST_FUT:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final enum MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final enum MARSHALLER_ID:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final MAX_KEYS_CNT:I = 0x40

.field public static final enum MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final enum NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final enum PARSER_STATE:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field public static final enum SSL_HANDLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

.field private static final keyGen:Ljava/util/concurrent/atomic/AtomicInteger;


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
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "PARSER_STATE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->PARSER_STATE:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "SSL_HANDLER"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->SSL_HANDLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "NIO_OPERATION"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "LAST_FUT"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->LAST_FUT:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "MARSHALLER"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "MARSHALLER_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER_ID:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    const-string v1, "MSG_WRITER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->PARSER_STATE:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->SSL_HANDLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->LAST_FUT:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER_ID:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->$VALUES:[Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->values()[Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->keyGen:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public static nextUniqueKey()I
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->keyGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 63
    .local v0, "res":I
    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Maximum count of NIO session keys in system is limited by: 64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->$VALUES:[Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    return-object v0
.end method
