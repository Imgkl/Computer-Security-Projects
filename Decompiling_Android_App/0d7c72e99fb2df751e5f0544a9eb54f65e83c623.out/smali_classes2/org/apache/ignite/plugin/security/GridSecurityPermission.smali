.class public final enum Lorg/apache/ignite/plugin/security/GridSecurityPermission;
.super Ljava/lang/Enum;
.source "GridSecurityPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/plugin/security/GridSecurityPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum ADMIN_CACHE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum ADMIN_QUERY:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum ADMIN_VIEW:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum EVENTS_DISABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum EVENTS_ENABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum TASK_CANCEL:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field public static final enum TASK_EXECUTE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

.field private static final VALS:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "CACHE_READ"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 31
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "CACHE_PUT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 34
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "CACHE_REMOVE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 37
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "TASK_EXECUTE"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_EXECUTE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 40
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "TASK_CANCEL"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_CANCEL:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 43
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "EVENTS_ENABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->EVENTS_ENABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 46
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "EVENTS_DISABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->EVENTS_DISABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 49
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "ADMIN_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->ADMIN_VIEW:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 52
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "ADMIN_QUERY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->ADMIN_QUERY:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 55
    new-instance v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const-string v1, "ADMIN_CACHE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->ADMIN_CACHE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_EXECUTE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_CANCEL:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->EVENTS_ENABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->EVENTS_DISABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->ADMIN_VIEW:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->ADMIN_QUERY:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->ADMIN_CACHE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->$VALUES:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 58
    invoke-static {}, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->values()[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->VALS:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/plugin/security/GridSecurityPermission;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 67
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->VALS:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->VALS:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/plugin/security/GridSecurityPermission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/plugin/security/GridSecurityPermission;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->$VALUES:[Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v0}, [Lorg/apache/ignite/plugin/security/GridSecurityPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    return-object v0
.end method
