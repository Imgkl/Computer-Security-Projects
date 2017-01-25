.class public final enum Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
.super Ljava/lang/Enum;
.source "GridRestCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_CAS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_GET_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_PUT_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_QUERY_EXECUTE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_QUERY_FETCH:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_QUERY_REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum EXE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum LOG:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum NODE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum QUIT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum RESULT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum TOPOLOGY:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field public static final enum VERSION:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field private static final cmds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_GET"

    const-string v6, "get"

    invoke-direct {v4, v5, v8, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 37
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_GET_ALL"

    const-string v6, "getall"

    invoke-direct {v4, v5, v9, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 40
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_PUT"

    const-string v6, "put"

    invoke-direct {v4, v5, v10, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 43
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_ADD"

    const-string v6, "add"

    invoke-direct {v4, v5, v11, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 46
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_PUT_ALL"

    const-string v6, "putall"

    invoke-direct {v4, v5, v12, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 49
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_REMOVE"

    const/4 v6, 0x5

    const-string v7, "rmv"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 52
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_REMOVE_ALL"

    const/4 v6, 0x6

    const-string v7, "rmvall"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 55
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_REPLACE"

    const/4 v6, 0x7

    const-string v7, "rep"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 58
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_CAS"

    const/16 v6, 0x8

    const-string v7, "cas"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_CAS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 61
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_APPEND"

    const/16 v6, 0x9

    const-string v7, "append"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 64
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_PREPEND"

    const/16 v6, 0xa

    const-string v7, "prepend"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 67
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_METRICS"

    const/16 v6, 0xb

    const-string v7, "cache"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 70
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "ATOMIC_INCREMENT"

    const/16 v6, 0xc

    const-string v7, "incr"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 73
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "ATOMIC_DECREMENT"

    const/16 v6, 0xd

    const-string v7, "decr"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 76
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "TOPOLOGY"

    const/16 v6, 0xe

    const-string v7, "top"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->TOPOLOGY:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 79
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "NODE"

    const/16 v6, 0xf

    const-string v7, "node"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NODE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 82
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "EXE"

    const/16 v6, 0x10

    const-string v7, "exe"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->EXE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 85
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "RESULT"

    const/16 v6, 0x11

    const-string v7, "res"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->RESULT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 88
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "VERSION"

    const/16 v6, 0x12

    const-string v7, "version"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VERSION:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 91
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "LOG"

    const/16 v6, 0x13

    const-string v7, "log"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->LOG:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 94
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "NOOP"

    const/16 v6, 0x14

    const-string v7, "noop"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 97
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "QUIT"

    const/16 v6, 0x15

    const-string v7, "quit"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->QUIT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 100
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_QUERY_EXECUTE"

    const/16 v6, 0x16

    const-string v7, "queryexecute"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_EXECUTE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 103
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_QUERY_FETCH"

    const/16 v6, 0x17

    const-string v7, "queryfetch"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_FETCH:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 106
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const-string v5, "CACHE_QUERY_REBUILD_INDEXES"

    const/16 v6, 0x18

    const-string v7, "rebuildqueryindexes"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 27
    const/16 v4, 0x19

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v5, v4, v8

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v5, v4, v9

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v5, v4, v10

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v5, v4, v11

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_CAS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->TOPOLOGY:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NODE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->EXE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->RESULT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VERSION:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->LOG:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->QUIT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_EXECUTE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_FETCH:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    const/16 v5, 0x18

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v6, v4, v5

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 109
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->values()[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v4

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VALS:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 112
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->cmds:Ljava/util/Map;

    .line 118
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->values()[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 119
    .local v1, "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->cmds:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->key()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->key:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->cmds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    return-object v0
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 137
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VALS:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VALS:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->key:Ljava/lang/String;

    return-object v0
.end method
