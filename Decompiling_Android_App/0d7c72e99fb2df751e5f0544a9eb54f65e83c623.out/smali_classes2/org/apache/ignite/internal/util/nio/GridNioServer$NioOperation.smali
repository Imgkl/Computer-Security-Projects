.class final enum Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
.super Ljava/lang/Enum;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NioOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

.field public static final enum CLOSE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

.field public static final enum PAUSE_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

.field public static final enum REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

.field public static final enum REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

.field public static final enum RESUME_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1746
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1749
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    const-string v1, "REQUIRE_WRITE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1752
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->CLOSE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1755
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    const-string v1, "PAUSE_READ"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->PAUSE_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1758
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    const-string v1, "RESUME_READ"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->RESUME_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1744
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->CLOSE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->PAUSE_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->RESUME_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->$VALUES:[Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

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
    .line 1744
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1744
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .locals 1

    .prologue
    .line 1744
    sget-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->$VALUES:[Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    return-object v0
.end method
