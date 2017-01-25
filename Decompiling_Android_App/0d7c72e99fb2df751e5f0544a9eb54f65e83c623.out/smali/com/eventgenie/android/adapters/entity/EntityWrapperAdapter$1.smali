.class synthetic Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter$1;
.super Ljava/lang/Object;
.source "EntityWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    :try_start_0
    sget-object v0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
