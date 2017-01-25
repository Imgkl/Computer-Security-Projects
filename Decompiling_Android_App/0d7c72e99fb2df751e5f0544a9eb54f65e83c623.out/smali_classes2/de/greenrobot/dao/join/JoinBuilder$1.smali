.class synthetic Lde/greenrobot/dao/join/JoinBuilder$1;
.super Ljava/lang/Object;
.source "JoinBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/join/JoinBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$de$greenrobot$dao$join$JoinType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lde/greenrobot/dao/join/JoinType;->values()[Lde/greenrobot/dao/join/JoinType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/greenrobot/dao/join/JoinBuilder$1;->$SwitchMap$de$greenrobot$dao$join$JoinType:[I

    :try_start_0
    sget-object v0, Lde/greenrobot/dao/join/JoinBuilder$1;->$SwitchMap$de$greenrobot$dao$join$JoinType:[I

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-virtual {v1}, Lde/greenrobot/dao/join/JoinType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lde/greenrobot/dao/join/JoinBuilder$1;->$SwitchMap$de$greenrobot$dao$join$JoinType:[I

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Cross:Lde/greenrobot/dao/join/JoinType;

    invoke-virtual {v1}, Lde/greenrobot/dao/join/JoinType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
