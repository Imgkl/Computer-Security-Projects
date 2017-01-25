.class public final enum Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
.super Ljava/lang/Enum;
.source "IgfsIpcCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum AFFINITY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field private static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CLOSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum CONTROL_RESPONSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum DELETE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum EXISTS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum HANDSHAKE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum INFO:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum LIST_FILES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum LIST_PATHS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum MAKE_DIRECTORIES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum OPEN_APPEND:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum OPEN_CREATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum OPEN_READ:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum PATH_SUMMARY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum READ_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum RENAME:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum SET_TIMES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum STATUS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum UPDATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field public static final enum WRITE_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;


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
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "HANDSHAKE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->HANDSHAKE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "STATUS"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->STATUS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "EXISTS"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->EXISTS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->INFO:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "PATH_SUMMARY"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->PATH_SUMMARY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->UPDATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "RENAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->RENAME:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "DELETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->DELETE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "MAKE_DIRECTORIES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->MAKE_DIRECTORIES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 54
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "LIST_PATHS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->LIST_PATHS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "LIST_FILES"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->LIST_FILES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "AFFINITY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->AFFINITY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 63
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "SET_TIMES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->SET_TIMES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "OPEN_READ"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_READ:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "OPEN_APPEND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_APPEND:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "OPEN_CREATE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_CREATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "CLOSE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->CLOSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 78
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "READ_BLOCK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->READ_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 81
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "WRITE_BLOCK"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->WRITE_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 84
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    const-string v1, "CONTROL_RESPONSE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->CONTROL_RESPONSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 25
    const/16 v0, 0x14

    new-array v0, v0, [Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->HANDSHAKE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->STATUS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->EXISTS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->INFO:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->PATH_SUMMARY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->UPDATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->RENAME:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->DELETE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->MAKE_DIRECTORIES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->LIST_PATHS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->LIST_FILES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->AFFINITY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->SET_TIMES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_READ:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_APPEND:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_CREATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->CLOSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->READ_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->WRITE_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->CONTROL_RESPONSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->$VALUES:[Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 87
    invoke-static {}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->values()[Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ALL:Ljava/util/List;

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

.method public static valueOf(I)Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .locals 1
    .param p0, "ordinal"    # I

    .prologue
    .line 96
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ALL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->$VALUES:[Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    return-object v0
.end method
