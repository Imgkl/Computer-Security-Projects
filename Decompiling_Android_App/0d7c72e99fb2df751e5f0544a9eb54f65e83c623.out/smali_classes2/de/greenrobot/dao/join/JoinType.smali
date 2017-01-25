.class public final enum Lde/greenrobot/dao/join/JoinType;
.super Ljava/lang/Enum;
.source "JoinType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/greenrobot/dao/join/JoinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/greenrobot/dao/join/JoinType;

.field public static final enum Cross:Lde/greenrobot/dao/join/JoinType;

.field public static final enum Inner:Lde/greenrobot/dao/join/JoinType;

.field public static final enum Left:Lde/greenrobot/dao/join/JoinType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lde/greenrobot/dao/join/JoinType;

    const-string v1, "Inner"

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/join/JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/join/JoinType;->Inner:Lde/greenrobot/dao/join/JoinType;

    .line 5
    new-instance v0, Lde/greenrobot/dao/join/JoinType;

    const-string v1, "Left"

    invoke-direct {v0, v1, v3}, Lde/greenrobot/dao/join/JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    .line 6
    new-instance v0, Lde/greenrobot/dao/join/JoinType;

    const-string v1, "Cross"

    invoke-direct {v0, v1, v4}, Lde/greenrobot/dao/join/JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/join/JoinType;->Cross:Lde/greenrobot/dao/join/JoinType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lde/greenrobot/dao/join/JoinType;

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Inner:Lde/greenrobot/dao/join/JoinType;

    aput-object v1, v0, v2

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    aput-object v1, v0, v3

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Cross:Lde/greenrobot/dao/join/JoinType;

    aput-object v1, v0, v4

    sput-object v0, Lde/greenrobot/dao/join/JoinType;->$VALUES:[Lde/greenrobot/dao/join/JoinType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lde/greenrobot/dao/join/JoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/join/JoinType;

    return-object v0
.end method

.method public static values()[Lde/greenrobot/dao/join/JoinType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->$VALUES:[Lde/greenrobot/dao/join/JoinType;

    invoke-virtual {v0}, [Lde/greenrobot/dao/join/JoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/greenrobot/dao/join/JoinType;

    return-object v0
.end method
