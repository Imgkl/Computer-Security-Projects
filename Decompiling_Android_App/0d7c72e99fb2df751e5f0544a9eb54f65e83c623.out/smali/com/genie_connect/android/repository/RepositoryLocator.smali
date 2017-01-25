.class public Lcom/genie_connect/android/repository/RepositoryLocator;
.super Ljava/lang/Object;
.source "RepositoryLocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/repository/RepositoryLocator$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static getRepositoryClass(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/Class;
    .locals 2
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/genie_connect/android/repository/RepositoryLocator$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    const-class v0, Lcom/genie_connect/android/repository/ExhibitorRepository;

    goto :goto_0

    .line 53
    :pswitch_1
    const-class v0, Lcom/genie_connect/android/repository/ProductRepository;

    goto :goto_0

    .line 55
    :pswitch_2
    const-class v0, Lcom/genie_connect/android/repository/SpeakerRepository;

    goto :goto_0

    .line 57
    :pswitch_3
    const-class v0, Lcom/genie_connect/android/repository/DownloadableRepository;

    goto :goto_0

    .line 59
    :pswitch_4
    const-class v0, Lcom/genie_connect/android/repository/PoiRepository;

    goto :goto_0

    .line 61
    :pswitch_5
    const-class v0, Lcom/genie_connect/android/repository/SessionRepository;

    goto :goto_0

    .line 63
    :pswitch_6
    const-class v0, Lcom/genie_connect/android/repository/SubsessionRepository;

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getRepositoryForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/repository/base/BaseRepository;
    .locals 2
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ")",
            "Lcom/genie_connect/android/repository/base/BaseRepository",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-static {p0}, Lcom/genie_connect/android/repository/RepositoryLocator;->getRepositoryClass(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/base/BaseRepository;

    return-object v0
.end method
