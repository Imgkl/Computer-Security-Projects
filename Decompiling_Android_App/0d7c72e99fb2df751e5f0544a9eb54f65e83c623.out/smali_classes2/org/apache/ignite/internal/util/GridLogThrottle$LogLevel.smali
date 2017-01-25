.class abstract enum Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;
.super Ljava/lang/Enum;
.source "GridLogThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLogThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

.field public static final enum ERROR:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

.field public static final enum INFO:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

.field public static final enum WARN:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$1;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->ERROR:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    .line 197
    new-instance v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$2;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->WARN:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    .line 204
    new-instance v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$3;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->INFO:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->ERROR:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->WARN:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->INFO:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->$VALUES:[Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

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
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/ignite/internal/util/GridLogThrottle$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/GridLogThrottle$1;

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    const-class v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->$VALUES:[Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    return-object v0
.end method


# virtual methods
.method public abstract doLog(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
